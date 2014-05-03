class Opt1 < ActiveRecord::Base
	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |truck|
	      csv << truck.attributes.values_at(*column_names)
	    end
	  end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			trucks = find_by_id(row["id"]) || new
			trucks.attributes = row.to_hash.slice!("id", "created_at", "updated_at")
			trucks.save!
		end
	end


end



class AdddatimeToTrucks < ActiveRecord::Migration
  def change
  	add_column :trucks, :datetimestamp, :datetime
  end
end

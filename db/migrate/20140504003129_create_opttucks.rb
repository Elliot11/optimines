class CreateOpttucks < ActiveRecord::Migration
  def change
    create_table :opttucks do |t|
      t.string :truck
      t.string :time
      t.string :percentage

      t.timestamps
    end
  end
end

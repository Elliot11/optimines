class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end

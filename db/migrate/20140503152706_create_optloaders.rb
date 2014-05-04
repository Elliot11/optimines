class CreateOptloaders < ActiveRecord::Migration
  def change
    create_table :optloaders do |t|
      t.string :time
      t.string :truck
      t.string :color

      t.timestamps
    end
  end
end

class CreateOpt1s < ActiveRecord::Migration
  def change
    create_table :opt1s do |t|
      t.string :truck
      t.string :time
      t.string :percentage
      t.string :color
      t.string :hidden

      t.timestamps
    end
  end
end

class CreateLoaderStatuses < ActiveRecord::Migration
  def change
    create_table :loader_statuses do |t|
      t.string :time
      t.string :button1
      t.string :button2
      t.string :button3
      t.string :button4
      t.string :button5
      t.string :button6
      t.string :button7
      t.string :button8
      t.string :button9
      t.string :button10
      t.string :button11
      t.string :button12
      t.string :button13
      t.string :button14
      t.string :button15

      t.timestamps
    end
  end
end

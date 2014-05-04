class CreateGoldpis < ActiveRecord::Migration
  def change
    create_table :goldpis do |t|
      t.string :label
      t.string :value
      t.string :time

      t.timestamps
    end
  end
end

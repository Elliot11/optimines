class CreateGoldpercs < ActiveRecord::Migration
  def change
    create_table :goldpercs do |t|
      t.string :time
      t.string :under_shtd
      t.string :above_shtd

      t.timestamps
    end
  end
end

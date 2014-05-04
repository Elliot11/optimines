class CreateGoldmeasures < ActiveRecord::Migration
  def change
    create_table :goldmeasures do |t|
      t.string :time
      t.string :total_shtd

      t.timestamps
    end
  end
end

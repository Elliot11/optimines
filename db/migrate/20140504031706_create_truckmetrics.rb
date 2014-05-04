class CreateTruckmetrics < ActiveRecord::Migration
  def change
    create_table :truckmetrics do |t|
      t.string :date
      t.string :equipment
      t.string :delays
      t.string :directoperating
      t.string :indirectoperating
      t.string :plannedmaintenance
      t.string :standby
      t.string :unplannedmaintenance

      t.timestamps
    end
  end
end

class Fixtruckmetricstable < ActiveRecord::Migration
  def change
  	add_column :truckmetrics, :status_category, :string
  	add_column :truckmetrics, :duration, :string
  	remove_column :truckmetrics, :delays
  	remove_column :truckmetrics, :directoperating
  	remove_column :truckmetrics, :indirectoperating
  	remove_column :truckmetrics, :plannedmaintenance
  	remove_column :truckmetrics, :standby
  	remove_column :truckmetrics, :unplannedmaintenance
  	remove_column :truckmetrics, :date
  	add_column :truckmetrics, :date, :datetime

  end
end

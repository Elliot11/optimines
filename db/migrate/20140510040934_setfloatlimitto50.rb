class Setfloatlimitto50 < ActiveRecord::Migration
  def change
  	change_column :goldmeasures, :total_shtd, :float, limit: 50
  	change_column :goldpercs, :under_shtd, :float, limit: 50
  	change_column :goldpercs, :above_shtd, :float, limit: 50
  	change_column :goldpis, :value, :float, limit: 50
  	change_column :truckmetrics, :duration, :float, limit: 50
  end
end

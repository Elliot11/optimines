class Changecolumntype < ActiveRecord::Migration
  def change
  	change_column :goldpis, :value, :float
  end
end

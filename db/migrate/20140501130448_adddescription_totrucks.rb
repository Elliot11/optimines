class AdddescriptionTotrucks < ActiveRecord::Migration
  def change
  	add_column :trucks, :description, :text
  end
end

class CreateProcesstrucks < ActiveRecord::Migration
  def change
    create_table :processtrucks do |t|
      t.string :time
      t.string :truck1
      t.string :truck2
      t.string :truck3
      t.string :truck4
      t.string :truck5
      t.string :truck6
      t.string :truck7
      t.string :truck8

      t.timestamps
    end
  end
end

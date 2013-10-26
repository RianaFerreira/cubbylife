class AddUnitsTable < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unit_number
      t.integer :floor
      t.integer :occupants
      t.date :occupancy_date
      t.timestamps
    end
  end
end

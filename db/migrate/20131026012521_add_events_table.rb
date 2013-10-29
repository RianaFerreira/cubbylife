class AddEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.string :provider
      t.decimal :cost, precision: 8, scale: 2
      t.string :frequency
      t.timestamps
    end
  end
end

class AddEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :provide
      t.decimal :cost
      t.string :frequency
      t.timestamps
    end
  end
end

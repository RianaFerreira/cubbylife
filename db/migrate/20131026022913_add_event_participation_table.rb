class AddEventParticipationTable < ActiveRecord::Migration
  def change
    create_table :eventparticipation do |t|
      t.date :date
      t.time :time
      t.integer :unit_id
      t.integer :event_id
    end
  end
end

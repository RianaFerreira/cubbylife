class EventParticipation < ActiveRecord::Base
  attr_accessible :date, :time, :unit_id, :event_id
  belongs_to :unit
  belongs_to :event
end
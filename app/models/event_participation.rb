# == Schema Information
#
# Table name: event_participations
#
#  id       :integer          not null, primary key
#  date     :date
#  time     :time
#  unit_id  :integer
#  event_id :integer
#

class EventParticipation < ActiveRecord::Base
  attr_accessible :date, :time, :unit_id, :event_id
  belongs_to :unit
  belongs_to :event
end

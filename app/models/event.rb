# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  start       :datetime
#  end         :datetime
#  provider    :string(255)
#  cost        :decimal(8, 2)
#  frequency   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  #multiple events can be scheduled for the same date
  #an emergency event can be scheduled for the same day it's created
  #an event start date can't be after it's end date
  attr_accessible :name, :description, :start, :end, :provider, :cost, :frequency
  has_many :event_participations, :dependent => :destroy
  has_many :units, :through => :event_participations

  validates :name, :description, :start, :end, presence: true
  validates :cost, numericality: true, allow_nil: true
  validate :event_date_after_current
  validate :event_end_after_start

  def event_date_after_current
    if self.start < Time.now
      errors.add(:start, "Can't be before the current date and time")
    end
  end

  def event_end_after_start
    if self.end < self.start
      errors.add(:end, "Can't be before the start date")
    end
  end

end

# == Schema Information
#
# Table name: units
#
#  id             :integer          not null, primary key
#  unit_number    :string(255)
#  floor          :integer
#  occupants      :integer
#  occupancy_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Unit < ActiveRecord::Base
  attr_accessible :unit_number, :floor, :occupants, :occupancy_date
  has_many :event_participations, :dependent => :destroy
  has_many :events, :through => :event_participations
  has_many :tenants
end

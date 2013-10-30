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
  after_validation :validate_occupancy_date_based_on_occupants

  attr_accessible :unit_number, :floor, :occupants, :occupancy_date

  has_many :event_participations, :dependent => :destroy
  has_many :events, :through => :event_participations
  has_many :tenants

  validates :unit_number, :floor, :presence => true
  validates :floor, :numericality => { :only_integer => true }
  validates :occupants, :numericality => { :only_integer => true }, :if => Proc.new { |f| f.occupants.present? }
  validates :unit_number, :uniqueness => true

  private
  def validate_occupancy_date_based_on_occupants
    unless self.occupants.present?
      self.occupancy_date = nil
    end
  end
end

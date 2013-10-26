# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  start_date  :date
#  end_date    :date
#  start_time  :time
#  end_time    :time
#  provider    :string(255)
#  cost        :decimal(, )
#  frequency   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :name, :description, :start_date, :end_date, :start_time, :end_time, :provider, :cost, :frequency
  has_many :eventparticipations
  has_many :units, :through => :eventparticipations
end

# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :text
#  phone      :integer
#  unit_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tenant < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :unit_id
  belongs_to :unit
  has_one :user
end

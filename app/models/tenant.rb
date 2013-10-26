# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :text
#  phone      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tenant < ActiveRecord::Base
  attr_accessible :name, :email, :phone
  belongs_to :unit, :inverse_of => :tenants
  has_one :user
end

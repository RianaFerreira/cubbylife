# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  tenant_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :username, :password, :password_confirmation, :tenant_id

  belongs_to :tenant
  has_and_belongs_to_many :roles

  def is_admin?
    roles.include?(Role.where(:name => 'admin').first)
  end
end

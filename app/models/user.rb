# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  first_name       :string(255)
#  last_name        :string(255)
#  business_name    :string(255)
#  business_address :string(255)
#  email            :string(255)
#  phone            :string(255)
#  admin            :boolean
#  password_digest  :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  naics_code       :integer
#  industry         :string(255)
#

class User < ActiveRecord::Base
  has_many :invoices

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false}
  validates :password, length: { minimum: 6}
  validates :last_name, :first_name, :industry, presence: true
  validates :naics_code, length: { minimum: 6}, numericality: { only_integer: true }
end

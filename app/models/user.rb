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

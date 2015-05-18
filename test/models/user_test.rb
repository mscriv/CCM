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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

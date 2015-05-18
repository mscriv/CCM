# == Schema Information
#
# Table name: memberships
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  business_name   :string(255)
#  phone           :string(255)
#  email           :string(255)
#  business_needs  :text
#  business_issues :text
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class MembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

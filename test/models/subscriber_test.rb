# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SubscriberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

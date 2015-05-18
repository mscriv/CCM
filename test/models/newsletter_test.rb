# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class NewsletterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

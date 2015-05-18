# == Schema Information
#
# Table name: invoices
#
#  id             :integer          not null, primary key
#  invoice_number :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  user_id        :integer
#  amount_paid    :decimal(, )
#

require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

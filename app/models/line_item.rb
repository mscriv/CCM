# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  amount     :decimal(, )
#  quantity   :integer
#  invoice_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class LineItem < ActiveRecord::Base
  belongs_to :invoice

  def full_price
    amount * quantity
  end
end


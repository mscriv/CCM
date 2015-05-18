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

class Invoice < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  accepts_nested_attributes_for :line_items, allow_destroy: true


  def total_price
    # convert to array so it doesn't try to do sum on database directly
    line_items.to_a.sum(&:full_price)
  end

  scope :sales, -> { where.not(amount_paid: nil)}
end

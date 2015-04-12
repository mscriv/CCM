class LineItem < ActiveRecord::Base
  belongs_to :invoice

  def full_price
    amount * quantity
  end
end


class LineItemsController < ApplicationController
  def index
    @line_items = LineItem.all
  end

  def new
  end

  def show
  end

  def create
    @line_item = @invoice.line_items.create(line_item_params)
  end


  private


  def line_item_params
    params.require(:line_item).permit(:name, :quantity, :amount, :invoice_id)
  end
end

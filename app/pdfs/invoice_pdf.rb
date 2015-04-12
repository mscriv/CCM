class InvoicePdf < Prawn::Document
  def initialize(invoice, view)
    super(top_margin: 70)
    @invoice = invoice
    @view = view
    company_name
    invoice_user
    invoice_number
    line_items
    total_price
  end

  def company_name
    text "Continuity Consulting Management Group", size: 20, style: :bold, align: :center
  end

  def invoice_user
    move_down 40
    text "Invoice for: #{@invoice.user.business_name}", size: 15, style: :bold
  end
  def invoice_number
    text "Invoice \##{@invoice.invoice_number}", size: 15, style: :bold
  end

  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1..3)
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def line_item_rows
    [["Name", "Qty", "Amount", "Total_Amount"]] +
        @invoice.line_items.map do |item|
          [item.name, item.quantity, price(item.amount), price(item.full_price)]
        end
  end

  def price(num)
    @view.number_to_currency(num)
  end

  def total_price
    move_down 15
    text "Total Amount Due (as of #{Date.today.strftime('%B %d, %Y')}): #{price(@invoice.total_price)}", size: 16, style: :bold
  end
end
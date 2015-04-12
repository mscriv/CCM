class InvoicesController < ApplicationController
  def index
    @invoice = Invoice.all
  end

  def new
    @invoice = Invoice.new
    @invoice.line_items.build
  end

  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @invoice = Invoice.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = InvoicePdf.new(@invoice, view_context)
        send_data pdf.render, filename: "invoice_#{@invoice.invoice_number}.pdf",
                  type: "application/pdf",
                  disposition: "inline"
      end
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:invoice_number, :user_id, line_items_attributes: [:name, :amount, :quantity, :id, :destroy] )
  end
end

class AddAmountPaidToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :amount_paid, :decimal
  end
end

class AddUserRefToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :user, index: true
  end
end

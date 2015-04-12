class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.decimal :amount
      t.integer :quantity
      t.references :invoice, index: true

      t.timestamps
    end
  end
end

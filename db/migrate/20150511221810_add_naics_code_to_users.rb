class AddNaicsCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :naics_code, :integer
  end
end

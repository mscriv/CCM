class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :phone
      t.string :email
      t.text :business_needs
      t.text :business_issues

      t.timestamps
    end
  end
end

class AddContactDetailsToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :address_1, :string
    add_column :admins, :address_2, :string
    add_column :admins, :town, :string
    add_column :admins, :county, :string
    add_column :admins, :postcode, :string
    add_column :admins, :contact_number, :string
  end
end

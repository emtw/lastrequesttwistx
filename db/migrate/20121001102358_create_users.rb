class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_names
      t.string :last_name
      t.datetime :date_of_birth
      t.string :gender
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :town
      t.string :county
      t.string :postcode
      t.string :contact_number

      t.timestamps
    end
  end
end

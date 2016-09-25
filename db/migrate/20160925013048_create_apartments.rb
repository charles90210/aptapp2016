class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :street
      t.string :city
      t.string :postal_code
      t.string :state
      t.string :country
      t.string :landlord_name
      t.string :contact_number
      t.string :hours

      t.timestamps
    end
  end
end

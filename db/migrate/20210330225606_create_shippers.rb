class CreateShippers < ActiveRecord::Migration[6.0]
  def change
    create_table :shippers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :department
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :email
      t.integer :phone
      t.string :website

      t.timestamps
    end
  end
end

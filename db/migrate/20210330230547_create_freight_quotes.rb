class CreateFreightQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :freight_quotes do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.integer :phone
      t.string :description
      t.integer :quote_type_id
      t.integer :shipper_id

      t.timestamps
    end
  end
end

class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :resource, index: true, foreign_key: true
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end

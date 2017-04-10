class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :organization
      t.string :description
      t.string :phone_number
      t.string :website
      t.string :hours

      t.timestamps null: false
    end
  end
end

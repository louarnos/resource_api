class CreateResourceCategories < ActiveRecord::Migration
  def change
    create_table :resource_categories do |t|
      t.references :resource, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateResourceServices < ActiveRecord::Migration
  def change
    create_table :resource_services do |t|
      t.references :resource, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

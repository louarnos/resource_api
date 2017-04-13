class MakeColumnsNotNull < ActiveRecord::Migration
  def change
      change_column_null :addresses, :resource_id, false
      change_column_null :categories, :category_type, false
      change_column_null :services, :service_type, false
      change_column_null :resource_categories, :resource_id, false
      change_column_null :resource_categories, :category_id, false
      change_column_null :resource_services, :service_id, false
      change_column_null :resource_services, :resource_id, false
      change_column_null :resources, :organization, false
  end
end

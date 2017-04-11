class AddressNotNull < ActiveRecord::Migration
  def change
      change_column_null :addresses, :street_address, false
  end
end

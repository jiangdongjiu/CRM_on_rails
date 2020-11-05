class ChangeCustomerColumnfullName < ActiveRecord::Migration[6.0]
  def change
    rename_column :customers, :fullName, :full_name
  end
end

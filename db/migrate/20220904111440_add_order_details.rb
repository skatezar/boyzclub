class AddOrderDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :email, :text
    add_column :orders, :phone, :text
    add_column :orders, :message, :text
  end
end

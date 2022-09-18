class AddReadFeatureToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :read, :boolean, default: false
  end
end

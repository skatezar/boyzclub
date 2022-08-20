class PricetalkDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :pricetalks, :title, :string
    add_column :pricetalks, :link1, :string
    add_column :pricetalks, :link2, :string
    add_column :pricetalks, :link3, :string
    add_column :pricetalks, :price_prediction, :integer
    add_column :pricetalks, :para1, :text
    add_column :pricetalks, :para2, :text
    add_column :pricetalks, :para3, :text
  end
end

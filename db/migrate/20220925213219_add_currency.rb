class AddCurrency < ActiveRecord::Migration[7.0]
  def change
    add_column :watches, :currency, :text
  end
end

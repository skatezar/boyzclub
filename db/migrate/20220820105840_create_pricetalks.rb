class CreatePricetalks < ActiveRecord::Migration[7.0]
  def change
    create_table :pricetalks do |t|

      t.timestamps
    end
  end
end

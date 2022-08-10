class CreateWatches < ActiveRecord::Migration[7.0]
  def change
    create_table :watches do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end

class AddWatchDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :watches, :description, :text
    add_column :watches, :reference_link, :string
  end
end

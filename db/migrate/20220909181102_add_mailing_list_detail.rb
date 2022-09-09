class AddMailingListDetail < ActiveRecord::Migration[7.0]
  def change
    add_column :mailinglists, :mail, :string
  end
end

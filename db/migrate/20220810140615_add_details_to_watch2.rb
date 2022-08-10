class AddDetailsToWatch2 < ActiveRecord::Migration[7.0]
  def change
    add_column :watches, :condition, :string
    add_column :watches, :production_year, :string
    add_column :watches, :original_box, :string
    add_column :watches, :original_papers, :string
    add_column :watches, :location, :string
    add_column :watches, :listing_code, :string
    add_column :watches, :brand, :string
    add_column :watches, :model, :string
    add_column :watches, :reference_number, :string
    add_column :watches, :movement, :string
    add_column :watches, :case_material, :string
    add_column :watches, :bracelet_material, :string
  end
end

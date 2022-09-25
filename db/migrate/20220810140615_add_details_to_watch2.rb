class AddDetailsToWatch2 < ActiveRecord::Migration[7.0]
  def change
    add_column :watches, :condition, :text
    add_column :watches, :production_year, :text
    add_column :watches, :original_box, :text
    add_column :watches, :original_papers, :text
    add_column :watches, :location, :text
    add_column :watches, :listing_code, :text
    add_column :watches, :brand, :text
    add_column :watches, :model, :text
    add_column :watches, :reference_number, :text
    add_column :watches, :movement, :text
    add_column :watches, :case_material, :text
    add_column :watches, :bracelet_material, :text
  end
end

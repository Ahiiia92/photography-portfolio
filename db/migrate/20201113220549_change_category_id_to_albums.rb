class ChangeCategoryIdToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :category, :string
    remove_column :albums, :category_id
  end
end

class AddCategoyToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :category, :string
  end
end

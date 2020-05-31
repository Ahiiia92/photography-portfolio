class AddColumnsToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :title, :string
    add_column :albums, :date, :date
    add_column :albums, :description, :text
    add_column :albums, :location, :string
  end
end

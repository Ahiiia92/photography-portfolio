class ChangeColumnsToAlbums < ActiveRecord::Migration[6.0]
  def change
    rename_column :albums, :location, :city
    add_column :albums, :country, :string
    add_column :albums, :quote, :text
    add_reference :albums, :user, foreign_key: true
  end
end

class AddRefToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_reference :albums, :category, foreign_key: true
  end
end

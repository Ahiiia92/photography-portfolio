class AddContractToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :contract, :boolean
  end
end

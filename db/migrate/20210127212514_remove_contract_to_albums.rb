class RemoveContractToAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :contract, :boolean
  end
end

class AddAlbumArtToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :album_art, :string
  end
end

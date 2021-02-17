class AddBandArtToBands < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :band_art, :string

  end
end

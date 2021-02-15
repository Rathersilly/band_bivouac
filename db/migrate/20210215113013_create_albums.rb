class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.datetime :release_date
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end

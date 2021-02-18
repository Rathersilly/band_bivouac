# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bandname = "Neural Mammoth Motivator"
band = Band.create!( name: bandname,
              email: "nmm@example.com")
band_media_path = Rails.root.join("app/assets/media",
                                bandname.gsub(/ /, "_"))

band_media_path.children.each do |band_child|
  band.update(band_art: band_child.to_s) if band_child.extname == ".png"
  next unless File.directory?(band_child)
  album = band.albums.create!(name: band_child.basename, release_date: Time.zone.now)
  band_media_path.join(band_child).children.each do |album_child|
    album.update(album_art: album_child.to_s) if album_child.extname == ".png"
    album.songs.create!(name: album_child.basename) if album_child.to_s.include?("fake")
  end
         
end


#10.times do |n|
#  name = "#{Faker::Hacker.adjective.capitalize} #{Faker::Creature::Animal.name.capitalize}"
##  email = "#{name.sub(/ /, '_').downcase}#{n}@example.com"
#  Band.create!( name:       name,
#                email:      email)   
#end






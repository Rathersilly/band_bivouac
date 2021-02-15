# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  name = "#{Faker::Hacker.adjective.capitalize} #{Faker::Creature::Animal.name.capitalize}"
  email = "#{name.sub(/ /, '_').downcase}#{n}@example.com"
  Band.create!( name:       name,
                email:      email)   
end


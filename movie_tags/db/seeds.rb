# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Tag.destroy_all
20.times do 
	m = Movie.new(name: Faker::Book.title, year: rand(1900..2018).to_s)
    m.tags << Tag.new(name: Faker::Book.genre)
    m.tags << Tag.new(name: Faker::Book.genre)
    m.save
end

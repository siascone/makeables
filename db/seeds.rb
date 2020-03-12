# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

spencer = User.create!(username: 'spencer', password: 'password')
alice = User.create!(username: 'alice', password: 'password')
nemo = User.create!(username: 'nemo', password: 'password')
demo = User.create!(username: 'demo', password: 'password')
lizzy = User.create!(username: 'lizzy', password: 'password')
alec = User.create!(username: 'alec', password: 'password')
larry = User.create!(username: 'larry', password: 'password')
joe = User.create!(username: 'joe', password: 'password')
scott = User.create!(username: 'scott', password: 'password')
jane = User.create!(username: 'jane', password: 'password')
beno = User.create!(username: 'beno', password: 'password')
hayden = User.create!(username: 'hayden', password: 'password')
ryan = User.create!(username: 'ryan', password: 'password')
christopher = User.create!(username: 'christopher', password: 'password')
mary = User.create!(username: 'mary', password: 'password')

Category.destroy_all

instruments = Category.create!(type_name: "instruments")
science = Category.create!(type_name: "science")

Project.destroy_all

scalloped_frets = Project.create!(user_id: spencer.id, title: "Scallop your Guitar", category_id: instruments.id)

solar_balloon = Project.create!(user_id: alice.id, title: "Solar Balloon",  category_id: science.id)

scalloped = File.open("/Users/spencer/Desktop/scalloped.jpg")
solar = File.open("/Users/spencer/Desktop/solar.gif")

scalloped_frets.project_photo.attach(io: scalloped, filename: "scalloped.jpg")
solar_balloon.project_photo.attach(io: solar, filename: "solar.gif")

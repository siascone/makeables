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

# Project.destroy_all

scalloped_frets = Project.create!(user_id: spencer.id, title: "Scallop your Guitar", description: "Scalloping a fretboard is when you remove wood from the fretboard so that when the guitar is played, the fingers only contact the string, not the wood underneath, eliminating massive amounts of friction. It is much easier to bend strings with a scalloped guitar, and many guitarists do claim that scalloped fretboards allow you to play faster, as minimal contact with the string is needed")
solar_balloon = Project.create!(user_id: alice.id, title: "Solar Balloon", description: "Let's make a solar balloon that floats with the power of hot air! This is the perfect backyard activity for a sunny day. A few common trash bags taped together can become a science experiment and entertaining way to spend an afternoon.")

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
alec = User.create!(username: 'alec', password: 'password')
marshall = User.create!(username: 'marshall', password: 'password')


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

spencer = User.create!(username: 'sixstringsloud', password: 'password')
alice = User.create!(username: 'alpal', password: 'password')
nemo = User.create!(username: 'captainNemo', password: 'password')
demo = User.create!(username: 'demo', password: 'password')
lizzy = User.create!(username: 'lizzy123', password: 'password')
alec = User.create!(username: 'alec321', password: 'password')
larry = User.create!(username: 'lalarry', password: 'password')
joe = User.create!(username: 'joejoe', password: 'password')
scott = User.create!(username: 'sdog', password: 'password')
jane = User.create!(username: 'jane789', password: 'password')
beno = User.create!(username: 'b-no', password: 'password')
hayden = User.create!(username: 'hay-den', password: 'password')
ryan = User.create!(username: 'ryan', password: 'password')
christopher = User.create!(username: 'topher', password: 'password')
mary = User.create!(username: 'mary', password: 'password')

Category.destroy_all

instruments = Category.create!(type_name: "instruments")
science = Category.create!(type_name: "science")
three_d_printing = Category.create!(type_name: "3D printing")
furnature = Category.create!(type_name: "furnature")
outdoor = Category.create!(type_name: "outdoor")
craft = Category.create!(type_name: "craft")

Project.destroy_all

scalloped_frets = Project.create!(user_id: spencer.id, title: "Scallop your Guitar", category_id: instruments.id)
solar_balloon = Project.create!(user_id: alice.id, title: "Solar Balloon", category_id: science.id)
three_d_printed_snorkel = Project.create!(user_id: larry.id, title: "3D Printed Snorkel", category_id: three_d_printing.id) 
chess_table = Project.create!(user_id: scott.id, title: "How to Make a Chess/Checkers Table", category_id: furnature.id)
gopro_nosecone = Project.create!(user_id: lizzy.id, title: "Model Rocket With GoPro Nose Cone", category_id: science.id)
halfpipe = Project.create!(user_id: joe.id, title: "Build a Backyard Halfpipe", category_id: outdoor.id)
pergola = Project.create!(user_id: spencer.id, title: "The Perfect Pergola", category_id: outdoor.id)
spool = Project.create!(user_id: mary.id, title: "How to Spool a Fishing Reel", category_id: outdoor.id)
wood_trivits = Project.create!(user_id: hayden.id, title: "Make Your Own Trivits", category_id: craft.id)

scalloped = File.open("/Users/spencer/Desktop/makeables_seed_photos/scalloped.jpg")
solar = File.open("/Users/spencer/Desktop/makeables_seed_photos/solar.gif")
snorkel = File.open("/Users/spencer/Desktop/makeables_seed_photos/3d_printed_snorkel.jpg")
chess = File.open("/Users/spencer/Desktop/makeables_seed_photos/chess_table.jpg")
nosecone = File.open("/Users/spencer/Desktop/makeables_seed_photos/gopro_nose_cone.jpg")
pipe = File.open("/Users/spencer/Desktop/makeables_seed_photos/halfpipe.jpg")
perfect_pergola = File.open("/Users/spencer/Desktop/makeables_seed_photos/pergola.jpg")
reel = File.open("/Users/spencer/Desktop/makeables_seed_photos/spool.jpg")
trivits = File.open("/Users/spencer/Desktop/makeables_seed_photos/wood_trivits.jpg")

scalloped_frets.project_photo.attach(io: scalloped, filename: "scalloped.jpg")
solar_balloon.project_photo.attach(io: solar, filename: "solar.gif")
three_d_printed_snorkel.project_photo.attach(io: snorkel, filename: "snorkel.jpg")
chess_table.project_photo.attach(io: chess, filename: "chess.jpg")
gopro_nosecone.project_photo.attach(io: nosecone, filename: "nosecone.jpg")
halfpipe.project_photo.attach(io: pipe, filename: "pipe.jpg")
pergola.project_photo.attach(io: perfect_pergola, filename: "pergola.jpg")
spool.project_photo.attach(io: reel, filename: "reel.jpg")
wood_trivits.project_photo.attach(io: trivits, filename: "trivits.jpg")

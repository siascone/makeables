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
arduino = Category.create!(type_name: 'arduino')

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
arduino_grow_box = Project.create!(user_id: jane.id , title: "Arduino Aeroponics Growth System", category_id: arduino.id)
led_shpere = Project.create!(user_id: nemo.id, title: "Freeform LED Sphere", category_id: arduino.id)
nixie_clock = Project.create!(user_id: alec.id, title: "Make Your Own Retro Nixie Clock!" , category_id: arduino.id)

scalloped = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/scalloped.jpg")
solar = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/solar.gif")
snorkel = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/3d_printed_snorkel.jpg")
chess = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/chess_table.jpg")
nosecone = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/gopro_nose_cone.jpg")
pipe = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/halfpipe.jpg")
perfect_pergola = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/pergola.jpg")
reel = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/spool.jpg")
trivits = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/wood_trivits.jpg")
grow_box = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/arduino_grow_box.jpg")
sphere = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/led_sphere.jpg")
clock = File.open("https://makeables-seeds.s3-us-west-1.amazonaws.com/nixie_clock.jpg")

scalloped_frets.project_photo.attach(io: scalloped, filename: "scalloped.jpg")
solar_balloon.project_photo.attach(io: solar, filename: "solar.gif")
three_d_printed_snorkel.project_photo.attach(io: snorkel, filename: "snorkel.jpg")
chess_table.project_photo.attach(io: chess, filename: "chess.jpg")
gopro_nosecone.project_photo.attach(io: nosecone, filename: "nosecone.jpg")
halfpipe.project_photo.attach(io: pipe, filename: "pipe.jpg")
pergola.project_photo.attach(io: perfect_pergola, filename: "pergola.jpg")
spool.project_photo.attach(io: reel, filename: "reel.jpg")
wood_trivits.project_photo.attach(io: trivits, filename: "trivits.jpg")
arduino_grow_box.project_photo.attach(io: grow_box, filename: "grow_box.jpg")
led_shpere.project_photo.attach(io: sphere, filename: "sphere.jpg")
nixie_clock.project_photo.attach(io: clock, filename: "clock.jpg")

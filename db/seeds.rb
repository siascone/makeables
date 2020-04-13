# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

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
ryan = User.create!(username: 'rdog', password: 'password')
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
three_d_printed_snorkel = Project.create!(user_id: larry.id, title: "3D Printed Snorkel", category_id: three_d_printing.id) 
chess_table = Project.create!(user_id: scott.id, title: "How to Make a Chess/Checkers Table", category_id: furnature.id)
gopro_nosecone = Project.create!(user_id: lizzy.id, title: "Model Rocket With GoPro Nose Cone", category_id: science.id)
halfpipe = Project.create!(user_id: joe.id, title: "Build a Backyard Halfpipe", category_id: outdoor.id)
pergola = Project.create!(user_id: spencer.id, title: "The Perfect Pergola", category_id: outdoor.id)
spool = Project.create!(user_id: mary.id, title: "How to Spool a Fishing Reel", category_id: outdoor.id)
solar_balloon = Project.create!(user_id: alice.id, title: "Solar Balloon", category_id: science.id)
wood_trivits = Project.create!(user_id: hayden.id, title: "Make Your Own Trivits", category_id: craft.id)
arduino_grow_box = Project.create!(user_id: jane.id , title: "Arduino Aeroponics Growth System", category_id: arduino.id)
led_shpere = Project.create!(user_id: nemo.id, title: "Freeform LED Sphere", category_id: arduino.id)
nixie_clock = Project.create!(user_id: alec.id, title: "Make Your Own Retro Nixie Clock!" , category_id: arduino.id)
omni_wheel = Project.create!(user_id: ryan.id, title: "Omni Wheel CNC Plotter V2", category_id: arduino.id)
earth_moon = Project.create!(user_id: nemo.id, title: "Earth-Moon Model (CNC Tellurion)", category_id: science.id)
friendship_bracelet = Project.create!(user_id: joe.id, title: "Make a Friendship Bracelet", category_id: craft.id)
analog_synth = Project.create!(user_id: spencer.id, title: "Analog Synthesizer", category_id: instruments.id)
bike_chain = Project.create!(user_id: spencer.id, title: "How to Clean a Bike Chain", category_id: outdoor.id)
tie_knots = Project.create!(user_id: alec.id, title: "How to Tie Knots", category_id: craft.id)
visualizer = Project.create!(user_id: beno.id, title: "Making a Visualizer", category_id: science.id)
extinguisher = Project.create!(user_id: christopher.id, title: "Fire Extinguisher Mini Fridge", category_id: science.id)
gas_turbine = Project.create!(user_id: scott.id, title: "DIY Gas Turbine", category_id: science.id)
tesla_coil = Project.create!(user_id: alice.id, title: "Tesla Coil", category_id: science.id)
stirling_engine = Project.create!(user_id: hayden.id, title: "Stirling Cycle Engine", category_id: science.id)
theremin_organ_synth = Project.create!(user_id: nemo.id, title: "Theremin, Organ and APC Synths", category_id: instruments.id)

scalloped = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/scalloped.jpg")
solar = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/solar.gif")
snorkel = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/3d_printed_snorkel.jpg")
chess = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/chess_table.jpg")
nosecone = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/gopro_nose_cone.jpg")
pipe = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/halfpipe.jpg")
perfect_pergola = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/pergola.jpg")
reel = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/spool.jpg")
trivits = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/wood_trivits.jpg")
grow_box = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/arduino_grow_box.jpg")
sphere = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/led_sphere.jpg")
clock = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/nixie_clock.jpg")
omni = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/omni_wheel.jpg")
earth = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/earth_moon_model.jpg")
bracelet = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/bracelet.jpg")
analog = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/analog_synth.jpg")
bike = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/bike_chain.jpg")
knots = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/knots.jpg")
visual = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/visualizer.jpg")
extinguish = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/extinguisher.jpg")
turbine = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/gas_turbine.jpg")
tesla = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/tesla_coil.jpg")
stirling = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/stirling_engine.jpg")
synths = open("https://makeables-seeds.s3-us-west-1.amazonaws.com/synths.jpg")

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
omni_wheel.project_photo.attach(io: omni, filename: "omni.jpg")
earth_moon.project_photo.attach(io: earth, filename: "earth.jpg")
friendship_bracelet.project_photo.attach(io: bracelet, filename: "bracelet.jpg")
analog_synth.project_photo.attach(io: analog, filename: "analog.jpg")
bike_chain.project_photo.attach(io: bike, filename: "bike.jpg")
tie_knots.project_photo.attach(io: knots, filename: "knots.jpg")
visualizer.project_photo.attach(io: visual, filename: "visual.jpg")
extinguisher.project_photo.attach(io: extinguish, filename: "extinguish.jpg")
gas_turbine.project_photo.attach(io: turbine, filename: "turbine.jpg")
tesla_coil.project_photo.attach(io: tesla, filename: "tesla.jpg")
stirling_engine.project_photo.attach(io: stirling, filename: "stirling.jpg")
theremin_organ_synth.project_photo.attach(io: synths, filename: "synths.jpg")

ProjectStep.destroy_all

scalloped_step_1 = ProjectStep.create!(heading: 'Step 1: Materials', body: '-A guitar
-Some duct tape, or masking tape
-A rounded metal file, meaning its round all around. Mine was about 5/16" in diameter at the widest section.
-Murphy Oil - any wood cleaner can do I think
-A toothbrush
-Sandpaper of many variates of fine grit.
-Dremel with a buffing wheel attachment, or a buffing wheel of some sorts. A rag can work too
-Screwdriver
-Wire clippers
-New guitar strings', project_id: scalloped_frets.id )
scalloped_step_2 = ProjectStep.create!(heading: 'Step 2: Starting Off...', body: 'Find a nice working area with a lot of space.

Lay your guitar flat on the working table, and clip all your strings. I found it handy to scallop my frets right before I needed a string change.

Remove all strings and turn the guitar over. Unscrew the screws that hold the body and neck of the guitar. Not all guitars have bolt on necks, I find removing the neck easier so that you have more control. It is alright to scallop the neck when it is attached, just be cautious.

Recently people have asked me, Why did you not just untie the strings?. Yeah, you can unitie the strings and scallop your frets. My strings were getting old, and my guitar strings are tied so that I left little slack, which makes it very difficult to restring. Plus I restring my guitar about once to twice a month, so I just waited until it was convenient for me.', project_id: scalloped_frets.id  )
scalloped_step_3 = ProjectStep.create!(heading: 'Step 3: Preparing the Neck', body: 'So now you are going to have your bare exposed guitar neck.
Cover frets 1-13 with tape, to make sure if you slip you wont scratch another fret. Its just a precaution, and its recommended.

Now I did not do this, but you probably should
Cover each fret with a strip of tape, and trim the excess with a razor if you are worried about damaging your frets.
My frets were not that damaged, and were slightly polished by the time I finish, but its an added form of security.', project_id: scalloped_frets.id)
scalloped_step_4 = ProjectStep.create!(heading: 'Step 4: Starting to Remove the Wood', body: 'My guitar only has 21 frets so that is where I started.

Basically you want to pass the file back and forth over the entire length of the fret, not one specific part, so that you are removing an even amount of wood.

Since your fretboard is curved, you also want to make you cut slightly curved as well.

You want to make multiple file passes, all next to each other, with different depths, to attain a curved effect.

It is easier to get the curved effect on the higher frets because the width of the fret is about the same as the diameter of your file but as you get to wider frets, you will have to shape it using the multiple pass method.', project_id: scalloped_frets.id)
scalloped_step_5 = ProjectStep.create!(heading: 'Step 5: Continuing the Process...', body: 'Some tips when removing the wood.
As explained before, you will need multiple passes with the file when working on wider frets.

I filed a general channel in the center of the fret to start off. Then I filed channels on each side.', project_id: scalloped_frets.id)
scalloped_step_6 = ProjectStep.create!(heading: 'Step 6: Sanding!', body: 'When you have established the general shape, its time to move on to sanding.
Remember, sanding shapes what you cannot do with filing.
Filing just gets rid of the wood you cannot with sanding; you can but it would take forever.

Sand with sandpaper starting at a low grit, and eventually make your way up to higher grits.
I started at like 80 and wound up at 400. I would advise you to go up to maybe 800. I just did not have anything higher', project_id: scalloped_frets.id)
scalloped_step_7 = ProjectStep.create!(heading: 'Step 7: Cleaning!', body: 'After sanding, you need to clean all the gunk thats stuck on your fingerboard.
I used Murphy Oil, a great wood cleaner.

Pour a thin line of oil on the fretboard, and use a toothbrush to scrub.
Scrub for a good amount, as you want to get rid of the gunk.', project_id: scalloped_frets.id)
scalloped_step_8 = ProjectStep.create!(heading: 'Step 8: Even More Sanding!', body: 'Now that your fretboard is cleaned of the gunk, run your hand across it.
Feels rough right? All that sanding gunk stopped you from sanding all the way. We needed to clean the fretboard so we can sand AGAIN.

Sand once more.', project_id: scalloped_frets.id)
scalloped_step_9 = ProjectStep.create!(heading: 'Step 9: Even More Cleaning', body: 'We need to clean the fretboard again.
Go through the same process.

You should continue this cycle of sanding and cleaning until your fretboard is nice and smooth', project_id: scalloped_frets.id)
scalloped_step_10 = ProjectStep.create!(heading: 'Step 10: Buffing', body: 'Get your dremel with that buffer attachment or even better, a buffing wheel and start polishing your fretboard.

You could always use a cloth, but you would need massive arms for the amount of buffing you are about to do.

Buff until shiny.', project_id: scalloped_frets.id)
scalloped_step_11 = ProjectStep.create!(heading: 'Step 11: Admire', body: 'Pat yourself on the back if you managed to get this far.
After this mod I scalloped all the way down to my 12th fret.
Have fun playing your scalloped guitar!', project_id: scalloped_frets.id)

3d_step_1 = ProjectStep.create!
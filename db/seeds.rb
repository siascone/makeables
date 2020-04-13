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
three_d_printed_snorkel = Project.create!(user_id: larry.id, title: "3D Printed Snorkel", description: "Snorkeling is sublime. A cheap water activity that makes the incredible world of the ocean available to anyone. It is so wonderful to see young kids surface suddenly after realizing they have seen a fish under them for the first time. Its simplicity of breathing under the ocean surface with a tube masks some of its risks. Sudden Snorkel Death (SSD) -- the loss of life with this activity is surprisingly common. About one death every two weeks here in Hawaii. The common interpretation of why this happens is usually: Snorkeling While Old. But, how do explain a 30 y.o. snorkeling death that occurred last month here? The easiest way to get a feeling for the risks is to actually perform the experiment everyone things of--take a garden hose down as far as you can in the pool and take a breath. I have done this with a lot of people and none can breath in adequately in a little over a foot of water! This is naturally a curve of breathing that starts off normal at the surface and declines rapidly based on body shape and sucking abilities--the human body unlike a snorkeling elephant is very limited. The other obvious problem is the dead space involved in snorkel design. An average human breath is about 500cc. There is about 150 cc of dead space in each breath--the area of your respiratory system that has expired air still stuck in it and must be cleared before fresh air enters the lungs. The average snorkel adds about 180 cc of dead space to this stack and so way over half of your next breath is old stuff and not the oxygen you need. Your breaths get smaller as you go down and contain less oxygen and the urgency to exhale--because holding a breath in is so much harder--shortens the exhalation time, all causing you to breath much more rapidly. What could go wrong?

Snorkels can be designed to get rid of this dead space by the use of valves that separate incoming from outgoing air. This was first mentioned in one of the original patents on a snorkel from 1941. Snorkels with valves are not common so if you want one and have a 3D printer I will show you how to build one. Disclaimer: Build and use at your own risk---if a simple tube can cause your demise imagine what this design could do.",category_id: three_d_printing.id) 
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

three_d_step_1 = ProjectStep.create!(heading: 'Step 1: Gather Your Materials', body: "This build is pretty much a 3D printing project with a few extras. I have designed two separate ways of building the snorkels. One requires buying a cheap but good snorkel on Amazon and then 3D printing the important parts and adapting it into the purchased snorkel. This is the easiest method. The more involved but creative build is all the parts are 3D printed except for the air tube where we use a commercial CPAP hose. You don't need #2 and #4 if you are using the commercial snorkel.

1. Aegend Dry Snorkel, Dive Mask Easy-Breath Free Diving Snorkel for Snorkeling about $16

2. MALUAN 6 Pack Silicone Mouthpiece Diving Clear $9

3. Silicone Film High Temp Thin Rubber Sheet Gasket Super Clear Flexible 12x19.7 x1/32 inch $16

4. RespLabs CPAP Hose, Black-Out Tubing $9

5. Loctite Super Glue

6. E6000--best glue on earth

7. Punch Hole Tool 3.5 mm", project_id: three_d_printed_snorkel.id)

three_d_step_2 = ProjectStep.create!(heading: 'Step 2: Printing It', body: "All the files are up at: https://www.thingiverse.com/thing:4184115 .The Snorkel body that we will be building consists of the mouthpiece and enclosure for two one-way valves. The mouthpiece is part of the main 3D printed: LargeSnorkelBody.stl. It is standard fit for the commercial silicon mouthpiece and they are easily switched. The LargeSnorkelBody.stl has openings on the left and right side for the ValveBody.stl which must be printed twice. Also print ValveNut.stl twice--this will hold in the silicon valve sheets that you will be cutting. For the cutting, print one copy of siliconCuttingForm.stl. All these items are needed for both snorkel designs.

For the commercial snorkel Mod: 1. Print: one copy of inletTubeLargeSnorkelConventional.stl

2. Print: one copy of either FishFaceSnorkel.stl or nonFishExitCover.stl --the fish face blurbs out your bubbles through its Choi like snorkel lips...and the other just has some wavy lines--

For the total build: 1. Print: TubeInletRib.stl --one-- 2. Print: one copy of either FishFaceSnorkel.stl or non FishExitCover.stl 3. Print: newSnorkelStabilizerWithClip v1.stl 4. Print: SnorkelStopValveBody.stl, SnorkelStopValveFloat.stl, SnorkelStopValveRetainerRing.stl, snorkelStopValveTop.stl --these parts for the float closure valve located at the end of the tube to prevent seawater from coming down your snorkel in case you dive--

I used an Ender 3 --super cheap/ really good-- with clear PLA for all of the prints which can be printed without support if positioned well. For the float valve --SnorkelStopValveFloat.stl-- I decreased the density down to 20% for floatation. I have no idea how these materials will hold up to the rigors of the beach, but I have used them for about a month with no signs of deterioration. I would not paint them...the one sand textured/colored one in the video had some melting issues when left out at about 100 F full sun for a day in the mouthpiece. Similar pieces unpainted had no deterioration.

Fusion360 was used for all parts design--and I am eternally grateful for Autodesk allowing me to use it.", project_id: three_d_printed_snorkel.id)

three_d_step_3 = ProjectStep.create!(heading: "Step 3: Build It #1", body: "First build the one way valves. These silicon valves consist of a PLA housing with a central pin. A carefully cut round section of silicon sheet sits in this housing and is centered through a punch hole in its center. A tiny PLA nut is glued over this pin to hold the silicon valve sheet in place. The silicon valve works by having its edge carefully abut the rim of the valve seat and allowing its minimally supported central area to intermittently seal and open with the direction of the air flow. The roll of silicon has two protective layers on either side which should be removed. Cut squares of the material that will accommodate the size of the siliconCuttingForm. Place the silicon under the form and carefully outline on a good soft cutting surface with an 11 blade. You should have a good even circle. I also have an STl file for a cutting disc where I made a sharp edge and had some luck punching out a perfect ring of silicon on a concrete floor with a hammer--but this was hit or miss. Take the silicon disc and center it on the back of the valve housing and place a mark exactly in the center where the pin sits. Take a punch and punch a central 3.5 mm hole slightly larger than the pin in the silicon disc. Flip the valve over and place the silicon hole over the pin and make sure the disc fits perfectly around the margin. It must seal completely for it to work. Glue the ValveNut over the pin to hold the silicon disc in place. You can use either super glue or E6000. The trick is just to have the Nut sit on the silicon sheet--no attempt should be made to glue it to the silicon-- only to the pin. Don't get messy at this point. Repeat this process with the other valve seat. This sounds more difficult than it is, honestly I can make these valves in about 30 seconds.

Air flows through the valves from the flat side to the pin side. When they're glued you can test the valve polarity by blowing through them. Glue the inlet valve to the left side of the snorkel body. I use E6000 to get a watertight seal. Use just enough to seal the edge in and push it all the way in to the retaining ring position in the snorkel body. Don't over-glue which could cause dripping of glue onto the silicon valve and ruin it. Glue the exit valve on the right side of the valve body and seat it at the retaining ring. E6000 takes overnight to dry. Test out the polarity by breathing into the mouthpiece if everything was done correctly you should hear the valves click open and shut and air will be sucked in from the left and be expelled out the right. For the commercial snorkel build glue the inletTubeLargeSnorkelConventional.stl onto the inlet side with E6000 and either a FishFaceSnorkel.stl or nonFishExitCover.stl cover over the exit side. Take the silicon mouthpiece off the commercial snorkel and put it on your 3D printed body and remove the lower mouthpiece plastic section from the ribbed silicon tube and attach the 3D snorkel body in its place. Go out and Snorkel!", project_id: three_d_printed_snorkel.id)

three_d_step_4 = ProjectStep.create!(heading: "Step 4: Build It #2", body: "To build the full 3D printed snorkel you have to print a different inflow tube to the snorkel body: TubeInletRib.stl. Glue it in place instead of inletTubeLargeSnorkelConventional.stl. The outlet end can be either a fish or flat. Glue a length of CPAP tubing to the entrance hole with E6000. The tube is guided and mounted to your snorkel goggles with: newSnorkelStabilizerWithClip v1.stl. This has three PLA guidance tubes as well as a neatly designed snorkel clip that still rotates when printed. I took the design from mccarmo on thingverse but modified the design extensively. The end of the CPAP tube must be protected from water splashes and inflow when diving so I designed the parts of the mushroom cap to cover the end of the tube. Print: SnorkelStopValveBody.stl, SnorkelStopValveFloat.stl, SnorkelStopValveRetainerRing.stl, snorkelStopValveTop.stl. Glue valve top to valve body with superglue or E6000. The float valve must have a layer of silicon applied to the top of it to provide a soft waterproof seal capacity. You cannot glue the silicon sheet unless you have very expensive glue so it is easiest to use commercial silicon sealant(clear) and place a thick bead of it on the topside of the float ring than push this face onto a sheet of wax paper until you get a nice flat layer a uniform 1 to 2 mm thick. Wait overnight and then remove the wax paper and trim the rim and center hole carefully of excess silicon. Assemble the rest of the mushroom valve by placing the Float on the body silicon surface toward the hole openings and finishing it off by gluing the lock ring to allow a movement of the float of 5mm. Adjust the tube length by assembling it and attaching it to your mask. The CPAP tube is cut to correct length and the mushroom valve tail with attached tube is glued into the highest support ring on the Stabilizer clip. The mushroom cap works amazingly well for keeping out splashes and diving.", project_id: three_d_printed_snorkel.id)

three_d_step_5 = ProjectStep.create!(heading: "Step 5: Testing", body: "Not much research can be found on how snorkels effect breathing. On-water testing is fairly difficult both from the standpoint of standardized endpoints and keeping electronics out of the water. Last years Instructable: https://www.instructables.com/id/Catching-Your-Bre... allowed me to build the testing system to see if these valved snorkels were of benefit to the user. I had four subjects between the ages of 32 and 67 participate by wearing either valved or unvalved snorkels on a programmed bicycle set to run for 20 minutes at exactly 30 Watts. The breath counter was set for breath per minute at every 30 second intervals. The results confirmed that respirations were increased in the nonvalved snorkels by an average of 26% in the four subjects. (TTest < 0.0001 in all studies). The first diagram above is my result and shows a slowly worsening respiration rate with time trend line. The need for hyperventilation to maintain the same oxygenation in a baseline study-not in water, may indicate the reason for a worsening outcome in subjects in-water where the respiratory volume is limited by depth. Loss of respiratory efficiency dead space can be helped with valves but respiratory volume will still be limiting.

Future studies will involve on-water testing under hopefully better controlled conditions.", project_id: three_d_printed_snorkel.id)

three_d_step_6 = ProjectStep.create!(heading: "Step 6: Using It", body: "I went through a lot of design changes in the building of these snorkels. I put together a GIF of some of the design debris that went into the garbage. Starting out with three valves and using commercially available purge valve inserts that can be obtained on the web. These proved to be too restrictive and vibrated with hard use. I then switched to respirator valves that can be bought to simulate CPR--these also proved to be too small and restrictive. The design of these valves incorporates a very large size and a minimum size to the exit tubing to provide good breath feel. This is hard to describe but becomes apparent on trying out the snorkel. It is disconcerting to have that feeling of breathing through a straw underwater. Having valves on snorkels amplifies the perception that its a struggle to get air at depth but having very large valves minimizes this. I also tried a variety of silicon tubing but found its wall thickness and stiffness made it hard to work with. The other problem with valved snorkels involve clearing the inhale tube if you get inadvertent water entry. If this occurs blowing will only clear out the water in the snorkel body but you almost have to suck clear the upper hose to continue. Simple snorkels can be easily cleared by just forcefully blowing out. I just added another Valved Snorkel design on Thingiverse--It places the input valve at the top and allows for better airway protection--also the design is lighter and more elegant: https://www.thingiverse.com/thing:4197780 If you enjoyed this information about snorkels you might look at my other Instructables that deal with them: https://www.instructables.com/id/Snorkel-Sniffer/, https://www.instructables.com/id/Oxygen-Measurement-in-Snorkels/,https://www.instructables.com/id/CO2-Measurement-in-Snorkels/", project_id: three_d_printed_snorkel.id)
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
three_d_printed_snorkel = Project.create!(user_id: spencer.id, title: "3D Printed Snorkel", description: "Snorkeling is sublime. A cheap water activity that makes the incredible world of the ocean available to anyone. It is so wonderful to see young kids surface suddenly after realizing they have seen a fish under them for the first time. Its simplicity of breathing under the ocean surface with a tube masks some of its risks. Sudden Snorkel Death (SSD) -- the loss of life with this activity is surprisingly common. About one death every two weeks here in Hawaii. The common interpretation of why this happens is usually: Snorkeling While Old. But, how do explain a 30 y.o. snorkeling death that occurred last month here? The easiest way to get a feeling for the risks is to actually perform the experiment everyone things of--take a garden hose down as far as you can in the pool and take a breath. I have done this with a lot of people and none can breath in adequately in a little over a foot of water! This is naturally a curve of breathing that starts off normal at the surface and declines rapidly based on body shape and sucking abilities--the human body unlike a snorkeling elephant is very limited. The other obvious problem is the dead space involved in snorkel design. An average human breath is about 500cc. There is about 150 cc of dead space in each breath--the area of your respiratory system that has expired air still stuck in it and must be cleared before fresh air enters the lungs. The average snorkel adds about 180 cc of dead space to this stack and so way over half of your next breath is old stuff and not the oxygen you need. Your breaths get smaller as you go down and contain less oxygen and the urgency to exhale--because holding a breath in is so much harder--shortens the exhalation time, all causing you to breath much more rapidly. What could go wrong?

Snorkels can be designed to get rid of this dead space by the use of valves that separate incoming from outgoing air. This was first mentioned in one of the original patents on a snorkel from 1941. Snorkels with valves are not common so if you want one and have a 3D printer I will show you how to build one. Disclaimer: Build and use at your own risk---if a simple tube can cause your demise imagine what this design could do.",category_id: three_d_printing.id) 
chess_table = Project.create!(user_id: alice.id, title: "How to Make a Chess/Checkers Table", description: "Hi, have I got a fun instructable for your! Today We are making an outdoor checkers/chess table with an old table bottom we found on the side of the road and some plywood leftover from a flooring project.

Note: After the table is finished you can either use existing checker pieces or make your own with a few simple tools.

Supplies:
Old table base

Scrap plywood big enough for your needs

Tape measure

Compass

String

Pencil and/or marker

1 finishing nail

Hammer

Level - optional

Jig saw

Hand sander

Hole saw - if making your own checkers

Screws

Painters tape

Outdoor Paint - I used red, black, and white for the table and black, white, gold, and silver for the checkers

Paintbrushes", category_id: furnature.id)
gopro_nosecone = Project.create!(user_id: nemo.id, title: "Model Rocket With GoPro Nose Cone", description: "Several years ago I made this: GoPro Model Rocket.

It was completely scratch-built and very complicated, and I've been nagging myself ever since to make an easier, better version. And this is it!

To simplify things right off, I started with a store-bought kit: the E-motor updated version of the classic Estes Cherokee model.

Modifications were made to the kit to allow carrying a camera, with the main change being a 3D printed, 2-part nose cone/camera pod I designed using Tinkercad.

The design was very simple to create, even with me being a complete novice to 3D designing and printing.

The rocket has been flown successfully many times now. Read on for all the details!",category_id: science.id)
halfpipe = Project.create!(user_id: alec.id, title: "Build a Backyard Halfpipe", description: "Let's build a mini ramp! Wait...what is that, exactly?!

A Mini Ramp is a skateboard ramp, think halfpipe, that is smaller than six feet tall and doesn't contain any vert, meaning that it doesn't go vertical in the sloped transition. The DIY mini ramp we're building here is 3 feet tall, 12 feet wide, and 24 feet long. It's the perfect size for casual skating and is awesome for beginners and experts alike.

We also have plans available on our website:
https://thewickedmakers.com/product/backyard-mini-...

This is an outdoor ramp and we built ours in our backyard, so we're going to cover how to set up a foundation on uneven ground, how to frame it using 2x4s and plywood, how to add steel coping, how to sheath it with plywood, and how to weather-proof it so it lasts as long as possible outdoors.

We recommend watching the video above and following along with the written steps!

Supplies:
TOOLS:

Miter Saw - https://amzn.to/3bpoEUu
Circular Saw - https://amzn.to/3bj2Z0m
Drill - https://amzn.to/2SvF6tQ
Impact Driver - https://amzn.to/2SvF6tQ
Cobalt Drill Bits - https://amzn.to/2UECqNd
Countersink Drill Bit - https://amzn.to/2S9yvGF
Level - https://amzn.to/31Cxsls
Tape Measure - https://amzn.to/2C00Jv7
Chalk Line - https://amzn.to/31EDlyx
Pencil
MATERIALS:

2x4 Lumber
3/8 Plywood
1/8 Plywood
2 inch OD Steel Pipe Schedule 40
Exterior Latex Paint
2.5 inch Exterior Screws
1.5 inch Exterior Screws
1/2 inch Galvanized Bolts/Nuts/Washers
12x12x8 Concrete Footings", category_id: outdoor.id)
pergola = Project.create!(user_id: lizzy.id, title: "The Perfect Pergola", description: "Building a pergola is a quick way to add a touch of class to your outdoor space, and it's certainly something a homeowner can tackle by him or herself, and can even finish in a couple of days if sufficiently motivated. Additionally, for those who aren't very experienced in building things with wood, this is a good starter project to develop skills that will readily transfer to other projects.

I'll note right away that I was able to build this pergola in two days; however, I've done this sort of thing a few times now, and I have a lot of power tools that make the job easier. If your skills aren't high and/or you have a limited tool set, it will take longer. Don't despair though - this still makes a great fair-weather weekend project that can be built over a couple weeks.

In the steps that follow, I link to videos I made for the build. The links go directly to the timestamp in the video pertaining to that particular step, so don't think I'm just spamming the same video over and over. You can also watch the in-depth videos in this playlist. My intent for this Instructable, with the videos to complement, is to be the most comprehensive tutorial online for building a pergola.

If you like this Instructable, don't forget to VOTE for it in the Woodworking Contest!

Also, if you like what you see, subscribe to my YouTube channel for more!


Supplies:
The materials list below will construct a pergola that covers and area approximately 10 feet by 14 feet and is 8 feet tall. You will have to update the bill of material for different configurations. The total material cost for my pergola was about $750 in 2019.

Since this is outdoor construction, pressure-treated, PT lumber is recommended. I am fortunate to have CedarTone lumber available near me, which combines the longevity benefits of PT wood with an attractive brownish colorant. You can also buy the green PT lumber and stain it with an exterior-grade stain. All dimensions are given in US customary units and use US nominal dimensional lumber sizes.

I have provided some affiliate links below for products and tools I used, or those very similar.

4 - 6x6x8ft posts
4 2x8x10ft secondary beams
4 2x8x14ft main beams
11 2x6x10ft rafters
12 2x4x14ft purlins
4 Simpson APB66 ornamental post base
4 5/8 inch dia x 6-1/2 inch long Simpson Titen HD concrete anchors, galvanized
40 2-7/8 inch HeadLOK structural wood screws or 1/4 inch dia. galvanized lag screws of equivalent length
32 4-1/2 inch HeadLOK structural wood screws or 1/4 inch dia. galvanized lag screws of equivalent length
2# galvanized 16D framing nails
Unless you have someone who can hold things in place for a long time, get another 8 2x4x8ft boards no need to be PT for temporary bracing
Required Tools:

Chalk line
2 - Tape measures
Pencil
Permanent marker
Hammer drill
5/8 inch dia. hammer drill bit
Ratchet and socket matching Titen HD anchor head
Saw horses
4-foot level
Drill
Set of drill bits through 1/2 inch dia.
Impact driver
Hammer
Framing square
Speed square
Mallet
1 inch chisel
Circular saw with framing blade
Reciprocating saw i.e. SAWZALL with wood blade
Optional Tools:

Air compressor
Air compressor blow gun
Heavy-duty impact gun
Framing nail gun
Hand clamps very helpful for providing third or fourth hands
Router
45-deg router chamfer bit
Flush trim plunge router bit, ~1/2 inch dia. x ~1/2 inch depth", category_id: outdoor.id)
spool = Project.create!(user_id: larry.id, title: "How to Spool a Fishing Reel", description: "Hi, I am Josh Gebhart. I have been fishing for 10 years and I have helped people get into fishing. You will feel more confident in reeling that proud angler knowing you spooled the reel correctly. Most people do not know how to spool a reel properly. I will be showing the steps on how to spool a fishing reel. Research shows that there are 49 million anglers in the United States but not all of them know how to spool a reel.", category_id: outdoor.id)
solar_balloon = Project.create!(user_id: joe.id, title: "Solar Balloon", description: "Let's make a solar balloon that floats with the power of hot air! This is the perfect backyard activity for a sunny day. A few common trash bags taped together can become a science experiment and entertaining way to spend an afternoon.

The black color of the bags absorbs the sun's energy, heating up the air inside. The color of an object correlates with the wavelengths of light it absorbs and reflects. Black absorbs the most wavelengths, while white absorbs the fewest. Red absorbs all but the red wavelengths, and so forth for other colors. Black is the most efficient color for converting light energy into heat energy, which is then transferred to the air inside the closed balloon. The hot air is less dense than the surrounding air, causing the balloon to float up, supporting its own weight. This same physics powers hot air that balloons you can ride in. It's the principle of buoyancy— once the air inside heats up and expands, our balloon weighs less than the air it displaces because it is less dense. This project demonstrates how solar radiation can be used to create heat, and a fun day outside.

This project is part of my free Solar Class, where you can learn more ways to harness the sun's energy through engraving and solar panels.

To keep up with what I'm working on, follow me on YouTube, Instagram, Twitter, Pinterest, and subscribe to my newsletter.", category_id: science.id)
wood_trivits = Project.create!(user_id: scott.id, title: "Make Your Own Trivets", description: "The urge to make some new trivets came upon me...

I made some out of solid wood -- those are quite simple and straightforward to make. They were intended as prototypes, but turned out good enough to keep.

The others were a bit more involved to build.

They are made of two layers of laminated strips of wood. One key design choice is that the two layers of wood are arranged so they are oriented perpendicular to each other. This gives an interesting look, but should also help with wood stability, since I have in effect created a custom piece of plywood.", category_id: craft.id)
arduino_grow_box = Project.create!(user_id: jane.id , title: "Arduino Aeroponics Growth System", description: "For the Grow Beyond Earth contest, I wanted to design a gardening system that had functionality and efficiency at the forefront of it’s features. This system is enclosed by a plexiglass cube but unlike other traditional bottom-up enclosures this has a floating cylinder center serving as the plant bed. The cylindrical design maximizes plantable surface area and free outward growth in two directions. The hallow cylinder's center serves as the housing for the plant's root systems and the hydroponic mist system. The system is completely sealed unless ventilated to recover unused fluids. For use in gravity, a suction device must be placed on the bottom to drain excess fluids. In space however, a suction pump can be placed opposite of the water lines and feed back into the space stations water recovery system. The watering system is Arduino based and completely automatic to ensure plants only receive the water they need to thrive. I opted for the aeroponics system because they have been known to increase growth speed and yields for vegetative and flowering plants while conserving an incredible amount of water in the process. Aeroponics has a wide range of other benefits including improved disease control, nutrient feeding, and overall usability. This Aeroponics system can be used throughout the entire lifecycle of plants from seed to harvest.

This design can be scaled for larger operations with multiple cubes. For example, there can be a cube with multiple cylinders with LEDs in between for germination and early plant life. Then a model like this one can be used up until harvest.

This model does not contain any consumable items like soil and other grow mediums to enhance efficiency and sustainability.

Supplies:
1x 5m LED strip https://amzn.to/2GQ37WZ

1x Arduino Uno R3 https://amzn.to/2GKPuZu

1x Two channel relay https://amzn.to/36KxSat

1x 12VDC Waterpump https://amzn.to/2vHb4M5

5x acrylic plexiglass sheets https://amzn.to/31eZe7D

16x 90 degree brackets https://amzn.to/3b4Q5CT

2x small hinges https://amzn.to/2SdZkIm

1x 100% clear silicon https://amzn.to/2tYVURX

4x mister nozzles https://amzn.to/2RQxkvI

1x roll of 1/4in misting hose https://amzn.to/2RNe9CL - cheaper in store

1x two port irrigation manifold https://amzn.to/2RRqGoZ - Cheaper in store

1x roll 3/8 inch hose https://amzn.to/36K50zj

1x 1/2 inch female to male hose adapter https://amzn.to/2GOagHi - Much cheaper in store use link as reference

30x 2 inch Net pots

30x 2 inch foam cloning collars", category_id: arduino.id)
led_shpere = Project.create!(user_id: beno.id, title: "Freeform LED Sphere", description: "My holiday project is done! Everybody is crazy about LED cubes. I wanted to create one myself, but I wanted to make it an even bigger challenge and since I am not limited by the use of circuit boards, I've decided to make an LED ball.

It took me 24 hours to solder and one long night to finish. But it was worth it. It's nice when lit and even nicer when not. Enjoy!", category_id: arduino.id)
nixie_clock = Project.create!(user_id: hayden.id, title: "Make Your Own Retro Nixie Clock!" , description: "In this project I will show you how to create a retro nixie clock. That means I will show you how you can control nixie tubes with a high voltage DC power supply and then I will combine 4 nixie tubes with an Arduino, a Real Time Clock (RTC) and a custom 3D printed enclosure in order to create the nixie clock. Let's get started!", category_id: arduino.id)
friendship_bracelet = Project.create!(user_id: spencer.id, title: "Make a Friendship Bracelet", description: "Things to keep in mind:

Scissors are sharp, be careful when using them.
Have fun!
Be sure to read all instructions before starting.
Read all instructions carefully.
Supervision may be required for the use of scissors by young children.
Supplies:
a. Painters tape

b. 3 different colors of embroidered floss cut 24-36 inches long. 2 of each color

c. Scissors

d. Ruler

e. Table", category_id: craft.id)
analog_synth = Project.create!(user_id: ryan.id, title: "Analog Synthesizer", description: "Analog synthesizers are very cool, but also quite difficult to make.

So I wanted to make one as simple as it can get, so its functioning can be easily understandable.

For it to work, you need a few basic sub-circuits: A simple oscillator with resistor selectable oscillating frequency, some keys, and a basic amplifier circuit.

If you use some conductive pads instead of push buttons for the keys, you could make your version of the very cool

Stylophone!

In this instructable we will learn how to make it and we will learn how it works.

The instructable is meant for beginner to intermediate electronics enthusiasts.", category_id: instruments.id)
bike_chain = Project.create!(user_id: christopher.id, title: "How to Clean a Bike Chain", description: "Disclaimer: Riding a bicycle can be dangerous, never ride out of your limits and always wear the appropriate amount of protective equipment. When handling certain chemicals for chain maintenance follow all manufactures safety precautions and wear proper protective equipment such as safety glasses, gloves etc.

A bicycle chain is the direct link between the power you put in through your legs and feet to the pedals and to the rear wheel for forward movement. It is important to keep the chain in good condition to optimize shifting performance and maximize its service life. Without proper cleaning and lubricating the chain will collect dirt and debris causing premature wear which can led to degraded shifting performance and eventually breakage, possibly leaving you stranded miles from home or your car. Intervals of how often the chain should be services depends on your style of riding, riding conditions and usage. Regardless, the following instructions are applicable to all styles of riders and bicycles, including but not limited to road, mountain, BMX, casual etc.

Supplies:
Safety Glasses, Nitrile Gloves, Chain Pliers, Chain Breaker (Optional), Chain inspection tool, Container such as plastic bottle or old Tupperware Mineral Spirits or other degreaser, Old t-shirt or rag, New chain pin (if not using quick link), Air compressor and air nozzle (Optional), Pliers, Chain Lubricant", category_id: outdoor.id)
tie_knots = Project.create!(user_id: mary.id, title: "Knot Training Knot Box", description: "Hi all, this project was the results of several things. My involvement with the Boy Scouts of America, my love for knot tying and lastly and more importantly being unemployed for three months. Its amazing what you can accomplish when you are actively trying to find work.

I had already made other knot tying stations for the Troop I was involved with along with a few knot boards. I also developed a Knot Sure™ tying program to help scouts and adult leaders too. More about that at the end.

Now this was back when I didn't have a lot wood working tools. So I can't really show a lot of the production pics as most of them have been lost either prints or digitally over the years. I had some scrap wood left over from other projects and I concocted a design for an oblong box with 7 stations (there are 7 basic knots Scouts) internally where scouts could step up and practice tying the scout knots required for various rank advancement.

I'll do my best to recreate how I managed all of this. This was made back in 2005 and is still being used today.

Supplies:
Now clearly you don't have to try and replicate this exact project as I used scraps to accomplish this. You can make it how you choose. Maybe even individual stations. Anyway here is a basic list of materials I used:

1/2in Plywood scrap sheet
1/2in 6in x 8' pine board
1/8in thick scrap gypsum board
1/2in thick scrap furring strip 36in
1/4in Dowel Rod 36in
Wood glue
Wood Screws
Brad Staples
Hot Glue
3 Brass Eye hooks
2 Brass Hinges
4 Brass Toggle Latch Clasps with Hasps
Brass brad nail (tacks)
1/4in thick white Rope
1/2in thick white twine
3/8in Hemp rope
Quart Flat Brown Paint
Gold Sharpie
Scores and scores of Knot books", category_id: craft.id)
visualizer = Project.create!(user_id: spencer.id, title: "Making a Visualizer", description: "What does music look like? It's not something that most people think about. Luckily for us, somebody decided to hook a music player up to an oscilloscope and find out. For the non-electronics geeks out there, an oscilloscope is a piece of electronic equipment that is used to view and analyze electrical signals. It displays the waveform of an inputted signal and provides other functions like amplitude control and sweep. Because oscilloscopes are so versatile, they also do a great job of displaying audio signals. That means you can effectively see what a song looks like.

Unfortunately, most of us don't have an expensive oscilloscope lying around. This is where the TV comes in. Because analog televisions and oscilloscope displays operate on the same basic principles, it is possible to repurpose the former into the latter with a bit of wire and some know-how. The result is a very simple oscilloscope that is able to display the audio signals in the range of about 100 to 3000 Hertz. This is why I have dubbed my creation an audio visualizer instead of an oscilloscope.

As always, I encourage you to try this project out yourself, even if you don't have much experience with electronics. The build ended up being super simple and it should only take about an hour or so if you have everything at your disposal.", category_id: science.id)
extinguisher = Project.create!(user_id: alice.id, title: "Fire Extinguisher Mini Fridge", description: "Everyone likes to enjoy an ice cold soda on a hot day. Even if that hot day is filled with flames. In this Instructable, I'll show you how to turn an old, empty fire extinguisher into a stylish mini fridge. Full disclosure, don't expect to be putting out any fires with this any time soon.", category_id: science.id)
gas_turbine = Project.create!(user_id: nemo.id, title: "DIY Gas Turbine", description: "I do not recommend anybody to try any of this, but if you are going to try it, this is the way you should do it.

This instructable deals with how to build a gas turbine in 5 steps. Each step deals with an aspect of the project and a suggested design solution, based on what I tried myself that worked.

*Rough* Grabcad model:

https://grabcad.com/library/300mm-flame-tube-funnel-mod-1", category_id: science.id)
tesla_coil = Project.create!(user_id: lizzy.id, title: "Tesla Coil", description: "The Makerspace at Østfold University College were holding an competition where the theme was to make something with an WOW-factor, so our group decided to make an tesla coil.

Just a tl;dr:

the project was built with no prior knowledge on tesla coils so the results were not what we were hoping for, becasue we could only get it to light up halogen light tube.", category_id: science.id)
stirling_engine = Project.create!(user_id: alec.id, title: "Stirling Cycle Engine", description: "This Instructable  will describe a model Stirling cycle engine I built. More importantly, it will list design criteria, materials of construction, and tips so that you can build one of your own design.

This type engine is called a low temperature difference (LTD) Stirling engine, and there are several ways to build one, some of which are described in other Instructables on this site.", category_id: science.id)
theremin_organ_synth = Project.create!(user_id: larry.id, title: "Theremin, Organ and APC Synths", description: "Today, we are going to be using 555 timers to create some musical instruments! We will be building a theremin, organ, and an Atari Punk Console. I used this activity in my classroom to celebrate graduating from discrete components to integrated circuits. This activity made a great segway into the rest of the course after covering the fundamentals of resistor-capacitor (RC) circuits and semiconductors. I had never seen students so frantically solving algebraic equations to compute the perfect capacitance values to tune their instruments to the correct frequencies before the performances. This activity is a lot of fun and teaches many aspects of circuit design. It also taught me the importance of adding volume knobs to circuits that make noise. You learn that very quickly in a room filled with a dozen screeching theremins!

This project requires a little bit of hardware knowledge, some knowledge of RC circuits, and some breadboarding. If you aren't familiar with 555 timers, that's fine! I will teach you everything you need to know about 555 timers in the first section.

Special thanks to Forest Mims who wrote some of the best and most accessible introductory books about electronics. His Toy Organ and Stepped Tone Generator are the basis for the Organ and Atari Punk Console. If you are interested in learning more about electronics, his book Getting Started in Electronics is a great place to start. It is very well-written and comes with 100 different circuits you can build!

Supplies:
Theremin

1x 555 Timer
2x Photoresistors
1x 10 kOhm Resistor
1x 1 MOhm Resistor
1x 1 kOhm Potentiometer
2x 0.1 uF Electrolytic Capacitor
1x 100 uF Electrolytic Capacitor
8 Ohm Speaker (1-2 Watts) or Passive/Piezoelectric Buzzer
Half-size breadboard
Some jumper wires
9V battery
9V battery clip
Organ

1x 555 Timer
1x 10 kOhm Resistor
1x 100 kOhm Potentiometer
1x 1 kOhm Potentiometer
1x 0.1 uF Electrolytic Capacitor
1x 100 uF Electrolytic Capacitor
A whole mess of various ceramic capacitors ranging from 1 nF to 22 uF
8x (or more!) Tactile/Momentary Pushbuttons
8 Ohm Speaker (1-2 Watts) or Passive/Piezoelectric Buzzer
Full-size breadboard
Some jumper wires
9V battery
9V battery clip
Atari Punk Console

2x 555 Timer
1x 1 kOhm Resistor
2x 470 kOhm Resistor
1x 1 kOhm Resistor
3x 0.1 uF Electrolytic Capacitor
1x 1 uF Electrolytic Capacitor
1x 100 uF Electrolytic Capacitor
8 Ohm Speaker (1-2 Watts) or Passive/Piezoelectric Buzzer
Half-size breadboard
Some jumper wires
9V battery
9V battery clip", category_id: instruments.id)

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

chess_step_1 = ProjectStep.create!(heading: "Step 1: Measure the Base - Measure the Wood", body: "The base we had, had a lower ring below the top, so I decided to make a shelf to store a basket for the checker pieces in, under the table when it was finished. Since I needed a lower disk to sit on the ring and a much larger disk for the game table top, I took two measurements.

For the lower disk/shelf I took the measurement then ended up cutting it slightly smaller because of the width of the scrap piece of wood I had to use for it.

For the table top I measured the width between the two hardware attachment sites to get the barest minimum size I needed. The scrap piece I had for the top was large enough to make the top a few inches bigger all the way around.", project_id: chess_table.id)

chess_step_2 = ProjectStep.create!(heading: "Step 2: Draw Your Disk/Circle With a Compass", body: "To use the compass to draw your disk, first make sure you have a pencil, or lead depending on the type of compass you have inserted.

Next, divide the total width of your disk in half to get the radius and this is what you need to set your compass to.

Then, place and hold the point of the compass where you want the center of your disk to be and holding it steady, turn the pencil end of the compass all the way around to completely mark your circle.

Note: I used this method for the smaller disk", project_id: chess_table.id)

chess_step_3 = ProjectStep.create!(heading: "Step 3: Draw Your Disk/Circle With a Piece of Twine and a Marker", body: "To use this method, after you have determined your total desired width for your disk, divide that measurement in half to determine you radius.

Once you have your radius, find your center and tap a finishing nail into the wood just enough to hold a little tension.

Tie one end of your string to the nail.

Then, measure out the length of your radius and tie the other end to your marker or pencil. I used a marker because the rough surface of the plywood kept breaking my lead.

Once both ends are securely tied, keep slight tension and holding the marker upright, draw your circle.

Note: I used this method for the table top, because my compass did not open large enough for my radius. Also, this method works well enough, but since hands are not always consistently, you circle may have a imperfections in it. It is okay.", project_id: chess_table.id)

chess_step_4 = ProjectStep.create!(heading: "Step 4: Cut Out Your Disk(s)", body: "Use your jig saw to cut out your disk or disks, depending on your particular table base and preference.

As you can see, I used two different jig saws. The tension screws on my old one just would not hold the blade in place, so I had to swap out. If you have one that works, that is all you need.

After you cut your disks, check your fit. There should not be a problem as long as your measurements and math are correct.

REMEMBER: Measure twice. Cut once. You can always cut off a little more, but you cannot UN-cut something.", project_id: chess_table.id)

chess_step_5 = ProjectStep.create!(heading: "Step 5: Cut Your Checkers", body: "If you are using existing game pieces, this step can be skipped over.

If you are making your own checkers pieces, your options are only as limited as your imagination and resources. You could paint stones and use them or some other fun idea, but I chose to make some out of the wood scraps I had, using a hole saw, and my cordless drill. If your saw is not very sharp, or if your drill is not very strong, you may want to use a corded drill. One of the teeth on my hole saw was slightly bent so it took more effort to cut so I went through a few batteries before switching to a corded drill.

You will need 12 checkers for each player, so 24 in total.

Note: I cut 34 total, so each player would have 5 back up pieces, just in case something happens to any of them or any come up missing.", project_id: chess_table.id)

chess_step_6 = ProjectStep.create!(heading: "Step 6: Sand, Sand, and Sand", body: "This step is pretty self explanatory. Sand the all the wood stuff, table top and checkers, including edges.

I did not take pictures of sanding the checkers, but I did that by hand with sand paper and for any stubborn little bristly bits around the edge that just did not want to sand smooth, I used nail trimmer to snip them down to avoid future splinters.", project_id: chess_table.id)

chess_step_7 = ProjectStep.create!(heading: "Step 7: Paint and Attach", body: "If only doing a table top, paint the underside only. If you are also doing a piece that will be trapped between the table top and the base, paint the top and bottom of that piece as well.

Once your pieces have dried, lay the table top on the ground with the painted bottom facing up.

If doing a second piece, like mine, place that piece on top of the table top with the bottom facing up.

Then, invert the table onto the table top with the smaller piece in the middle, making sure it is not under one of the attachment sites.

Next, made sure your base is centered on the disk and even all the way around. I eyeballed it, but you could measure if you wanted to be precise.

Then, use screws, and washers if necessary, to attach the base to the table top.

Once the tabletop had been attached, turn the table upright and center the smaller disk.

Note: At this point, rubber feet, foam tape, or something else could be used to hold the bottom disk securely in place if desired. I do not plan to move the table often so I did not do this, because I do not think I will have any problems with it shifting.

", project_id: chess_table.id)

chess_step_8 = ProjectStep.create!(heading: "Step 8: Draw the Grid for Your Checker/Chess Board", body: "The grid for a standard checker/chess board is 8 squares x 8 squares. I did my squares 3 inches in size. Of course you will have to adjust your size based on your table top measurements. As long as your game board is 8 squares x 8 squares, it does not matter how big they are.", project_id: chess_table.id)

chess_step_9 = ProjectStep.create!(heading: "Step 9: Tape and Paint", body: "After drawing my grid/game board, I taped off the boarder and paint-stained the background and table edges, red. If you have never done this before, it is something that I like to do, I use paint like stain. I dip a rag into the paint and rub it on the surface that I am wanting to paint. It gives it a nice smooth even coat.

Once the background is painted and dried, tape off your grid. It is your choice how you do this. You will figure out your own flow as you go. Once you have it all taped pick one of your game board colors and paint every other square that color.

After you have painted all the exposed squares, carefully remove the tape, before it dries.

Once dried, re-tape to expose new squares to paint.

After all squares of one color have been painted and dried, repeat the process with the second color.

Note: While painting the first taped sections, I also went into the areas that were blocked off with the tape and marked the rest of the squares that would be the same color. This help prevent me from getting confused and painting the wrong square the wrong color. As you can see in the pictures, when it is all taped up it makes it look crazy and confusing a little, because you end up with small rectangles of different sizes going different directions and you can easily get confused.", project_id: chess_table.id)

chess_step_10 = ProjectStep.create!(heading: "Step 10: Fix the Bleed", body: "If your plywood was not completely smooth, mine was not, then like me, you have have some bleed where the paint worked its way under the edge of the tape, or you may have just accidentally dropped or smudged some paint on top of another color. No big deal. Paint is forgiving.

Touch up any bleed with a fine-detail paintbrush, and any smudges or spills with an appropriate sized brush and needed color for correction.

Note:I did not re-tape, as I felt it would yield the same results I was trying to fix.", project_id: chess_table.id)

chess_step_11 = ProjectStep.create!(heading: "Step 11: Paint Your Checkers", body: "This step is also pretty self-explanatory.

Separate your checkers in to two piles of equal number.

Paint half the checker in one color.

Paint the remaining checker in the second color.

After the checkers are dry, paint a crown on one of the sides of each checker piece.

Note: You can paint all the crowns the same color if you wish. I chose to paint the crowns different colors for each player/team. I painted silver crowns on the black pieces and gold crowns on the white pieces, for better contrast. Also, you can use a stencil if you wish; I just free-handed mine.", project_id: chess_table.id)

chess_step_12 = ProjectStep.create!(heading: "Step 12: Time to Win, Er, Play ;-P", body: "Now that your game table is all nice and beautiful and complete, it is time to get your game on!

I bought a red basket from the dollar store to keep all my checker pieces in so I can store them on the shelf under the table top. It keeps them tidy, easily accessible, and out of the way.

I hope you enjoyed this instructable and find a table base on the side of the road real soon, so you can try it out and make your own AWESOME Outdoor Checkers and Chess game table.", project_id: chess_table.id)

gopro_step_1 = ProjectStep.create!(heading: "Step 1: Completed Model Overview", body: "The new nose pod has top and bottom 3D printed parts with a clear section in the middle where the camera and an altimeter sit, wedged tightly into a piece of stiff foam.

The clear tube is from a plastic soda bottle.

When the camera is in position and turned on, the clear tube is placed over it and all three sections are simply taped together with electrician's tape. It's low-tech but works great.

A model rocket shock cord is what connects the rocket body tube to the bottom of the nose cone, with the parachute typically attached to the nose cone or close to it.

I took a different approach with this rocket and attached the shock cord to the top of the nose pod, with part of it actually sitting externally during the launch--the strip of white elastic showing in the first photo.

This way the nose pod hangs upright during descent, making camera footage so much better.

Check out the launch video and then we'll dig into the build.", project_id: gopro_nosecone.id)

gopro_step_2 = ProjectStep.create!(heading: "Step 2: Launches", body: "The total launch weight of this rocket is 11.5 ounces, and it has been flown successfully on Estes D12-5, E9-6, and E12-4 motors.

It was launched 6 times over the course of a couple of days.

A 3D printed nose cone is relatively heavy compared to other types of model rocket noses, so this approach is not ideal if you're shooting for as high an altitude as possible.

However for hobby rocketry like this, the most important thing to me is seeing successful launches and recoveries. Slightly larger and heavier rockets have slower and more realistic takeoffs, and they're less likely to vanish from sight and get lost. These two aspects lead to a much more enjoyable experience, especially for kids", project_id: gopro_nosecone.id)

gopro_step_3 = ProjectStep.create!(heading: "Step 3: Supplies", body: "Here's what I used:

Cherokee-E Estes Model Rocket kit. From what I can find, these are only available at Hobby Lobby stores. But any taller model that flies on D or E size motors should work, or you could always just build your own from scratch.
Small GoPro-style camera
Printed nose pod pieces, top and bottom
Plastic soda bottle with cylindrical mid-section, that fits around the camera. Cheap brands of soda like Shasta or Western Family often come in this type of bottle.
3D printer + filament. I have a Creality CR-10
Miscellaneous rocket building supplies and launch equipment", project_id: gopro_nosecone.id)

gopro_step_4 = ProjectStep.create!(heading: "Step 4: Designing Nose Pod Parts in Tinkercad", body: "If you're not familiar with Tinkercad, you should just go in and start playing around with the shapes to see what it's all about. It's really easy to use!

When I was a kid I played around a lot in PowerPoint, making images by stretching, copy-pasting, aligning, rotating, and grouping simple shapes together.

Tinkercad uses all these same basic functions, but with a variety of 3D shapes to start with. You just push and pull to change sizes and shapes, or you can manually enter your desired dimensions for more precision. There is also the ability to group or merge negative hole shapes with solids, which creates hollow voids.

To design the two nose pod parts I began with calipers to get the needed real-life dimensions of the body tube and clear plastic tube.

The top nose part was designed using three simple shapes: half sphere, paraboloid, and tube. After adjusting to the desired dimensions, the paraboloid shape is turned into a negative hole and centered within the half sphere shape. These are then stacked onto the tube shape and grouped together, making a bowl-like hollow shape with an open bottom. The internal negative paraboloid shape makes this piece able to be printed without any additional supports.

The bottom nose part was designed similarly using basic shapes, however it was slightly more complicated. It's not perfect or as slick as more experienced designers would create, but it worked.

I'm including the .stl files here for anyone interested.", project_id: gopro_nosecone.id)

gopro_step_5 = ProjectStep.create!(heading: "Step 5: Print", body: "The designs were opened in Cura and settings adjusted to print with 1mm walls and 20% infill, then sliced and printed.

The parts were printed using basic PLA filament on a Creality CR-10 printer.

To get started with the basics of 3D design and printing, check out some of the site's classes on the subject: https://www.instructables.com/classes/tagged/3d-pr...", project_id: gopro_nosecone.id)

gopro_step_6 = ProjectStep.create!(heading: "Step 6: Prime and Paint", body: "I sprayed the nose pod pieces with a couple coats of primer, lightly sanded with 220 grit sandpaper, and then sprayed them with gloss black spray paint.", project_id: gopro_nosecone.id)

gopro_step_7 = ProjectStep.create!(heading: "Step 7: Start Building the Rocket", body: "I began building the rocket kit according to the instructions that came with it, but with modifications as outlined in the next steps.", project_id: gopro_nosecone.id)

gopro_step_8 = ProjectStep.create!(heading: "Step 8: Larger Launch Lugs on Stand-offs", body: "Launch lugs are little tubes that are fixed to the side of a model rocket that hold the rocket to the guide rod on the launch pad.

These allow the rocket to travel straight until it has enough speed to stay straight on its own.

I opted to make larger lugs than what came with the kit so it could be launched from a tall 1/4 inch launch rod. If you're interested, here is an instructable covering my homemade Model Rocket Launch Pad.

These new lugs were made with pieces of plastic drinking straw, which had thin painters masking paper glued around them. The paper shrinks tightly as it dries around the plastic and provides a glue-able surface to either glue the lugs directly to the rocket body, or in my case, to small pieces of balsa that act as stand-offs.

The launch lugs need to stand off from the rocket body in order for the launch rod to not interfere with the bulbous nose pod.", project_id: gopro_nosecone.id)

gopro_step_9 = ProjectStep.create!(heading: "Step 9: Upgraded Shock Cord", body: "For this rocket I opted to make an upgraded shock cord that is half kevlar cord, and half 1/4-inch elastic cord.

The kevlar portion was fixed to the motor mount tube. The elastic portion is tied to the top end of this, just below the upper mouth of the rocket body tube.

This way the kevlar portion is near the heat and sparks, while the softer elastic portion is what rubs on the upper mouth of the body tube when the parachute is deployed. The theory is that the kevlar portion will last much longer and give me more flights, while the elastic at the top end will make zippering the body tube less likely

I ordered a small roll of 1mm kevlar cord, 15m in length on amazon. Here's an affiliate link: https://amzn.to/30BoCE7", project_id: gopro_nosecone.id)

gopro_step_10 = ProjectStep.create!(heading: "Step 10: Finish Building Rocket", body: "This particular rocket has a body made of two tube portions that are glued together with a small cardboard sleeve. These were joined together and the new launch lugs were attached.

The motor mount assembly was then glued in place according to the kit's instructions.", project_id: gopro_nosecone.id)

gopro_step_11 = ProjectStep.create!(heading: "Step 11: Nose Cone Shock Cord Mount", body: "As I mentioned earlier, the shock cord is mounted to the top of the nose pod.

A piece of kevlar cord with knots on either end was epoxied into a small hole drilled in the top of the nose cone part, so just a tiny loop was sticking out of the top. I attached a number 10 fishing swivel to this loop.", project_id: gopro_nosecone.id)

gopro_step_12 = ProjectStep.create!(heading: "Step 12: Camera Mount and Soda Tube", body: "To mount the camera and altimeter to the lower half of the nose pod, I used a piece of foam floor mat with cut-outs made to simply wedge the gear in place.

This foam disc was hot glued to the lower pod part.

The middle section of a soda bottle was cut to the needed height", project_id: gopro_nosecone.id)

gopro_step_13 = ProjectStep.create!(heading: "Step 13: Shock Cord and Parachute", body: "A four-foot length of 1/4 inch elastic from the sewing section in the craft store was used as the top half of the shock cord.

The kevlar portion was fished out of the bottom of the rocket and tied to the end of the elastic, then fished back up through the top. The elastic portion was tied to the swivel at the top of the nose cone. Drops of white glue were rubbed into the knots to keep them from coming undone.

A larger parachute was made using a piece of plastic table cloth material found in the party aisle at the superstore. This is a 30 inch round chute with a 4 inch spill hole in the middle, attached to eight four-foot lines made of kite string.", project_id: gopro_nosecone.id)

gopro_step_14 = ProjectStep.create!(heading: "Step 14: Go Launch Some Rockets", body: "The body was painted with white, orange and red spray paints.

Ready for launch day!", project_id: gopro_nosecone.id)

gopro_step_15 = ProjectStep.create!(heading: "Step 15: Success!", body: "This project requires familiarity with building and launching mid-power model rockets, but zero prior experience with 3D design and printing. I'm proof of that! : )", project_id: gopro_nosecone.id)

halfpipe_step_1 = ProjectStep.create!(heading: "Step 1: The Foundation!", body: "The ramp we're building is 3 feet high, 12 feet wide and 24 feet long. Whatever the exact size of your ramp, you're going to need a flat piece of ground to put it. It's important that the ramp sits on level ground, so in a perfect world, it would sit either on a flat concrete pad or at the least on a wide level space. In our case, our yard is neither flat nor level so we had to fix that.

We start by laying out exactly where it will go in the yard and then use Concrete Footings--12x12x8--and put one at each corner. Because our yard slopes downhill, the ones at the top get buried quite a bit and the ones at the other end are above ground. We use a line level to ensure all 4 corners are level with each other, as well as square and evenly spaced.

Because the ramp is heavy, the foundation will settle a bit over time. To help keep it level for a long time we put a 3-4 inch thick layer of gravel underneath each of the footings.

For the rest of the ramp, we'll put 2 inch thick concrete pavers every 4 feet along the length of the ramp.", project_id: halfpipe.id)

halfpipe_step_2 = ProjectStep.create!(heading: "Step 2: The Sloped Transitions!", body: "The first bit of construction is to layout and cut the sloped transitions that make up the sides of the ramp. For this ramp, we're building four different quarter pipes and each one has a transition on each side. So, we need to make 8of them.

These are cut from 3/4 inch plywood and we can get two transitions from one 4x8 sheet. To lay them out, we start by putting two sheets side by side on the ground and marking the pivot point which is 6 foot 3.5 inches from the bottom and 2 inches in from the side. Since 2x4s are 3.5 inches wide, this will give us a 6 foot radius slope. Once we have it marked, we'll put in a screw and then tie a string to it. We'll then measure a 6 foot length of string and tie a pencil to the end and use it to draw the radius on the wood.

Next, we measure the back side to 2 feet 11.25 inches up from the bottom and then square that line across until it meets the curve we just drew. There is a small notch for the coping where that top-line meets the slope that is 1.25 inches tall and 1.75 inches deep.

Once everything is laid out, we then cut the shape out with a jigsaw and use it as a template to mark the other seven pieces and cut them all out, being careful to get them all as close to the same as we can.", project_id: halfpipe.id)

halfpipe_step_3 = ProjectStep.create!(heading: "Step 3: Framing the Quarter Pipes!", body: "We're building four quarter pipes: two that are 8 feet wide and two that are 4 feet wide. We'll then bolt one of each together to give us a 12 foot wide ramp. The next step is to cut all of the 2x4s that will be used to frame each quarter pipe, so to get the right length we have to subtract the width of each of the 3/4 inch plywood transitions, which means subtracting 1.5 inches.

That gives us a 2x4 length of 94.5 inches for the wider ramps and 46.5 inches for the shorter ones. Once we have these lengths, we then cut all the 2x4s down to length for all four quarter pipes. There are 34 2x4s needed for the two wide ramps and another 17 needed for both the shorter ramps.

To frame the quarter pipes, we screw in one upright 2x4 on each corner of the transition, one laid on its side at the top of the slope, and then one every 8 inches upright until we reach the bottom. We also put them along the top spaced at 8 inches apart and then lastly we cut some shorter pieces that go under the 2x4s at the top for added support for the deck.

When screwing the 2x4s to the plywood, we use 2.5 inch exterior screws and we use two screws for each side.", project_id: halfpipe.id)

halfpipe_step_4 = ProjectStep.create!(heading: "Step 4: Positioning, Leveling and Squaring!", body: "With all four quarter pipes built, we carefully position them all on the footings we made earlier. They're obviously heavy, so be careful moving them around! Once all four of them are in position, we then need to ensure that they are square to each other, and as level as possible.

This is the point when you'll add the concrete pavers underneath the ramps, spaced at 4 feet, to support the weight of the ramp.

To do this, we used a line level and ran it across all four corners, making small adjustments until we were happy that it was square and completely level.

You may find you need to either raise or lower the concrete footings to get things level. If this is too difficult, another option is shimming underneath the ramp with wood to get the exact height you need.", project_id: halfpipe.id)

halfpipe_step_5 = ProjectStep.create!(heading: "Step 5: The Flat Ground Sections!", body: "In between the quarter pipes, we'll use the same techniques to build two flat ground sections that connect everything together.

One of them is 8 feet wide and 8 feet long. The other is 4' wide and 8' long.

Once again we'll subtract for the width of the two 2x4s on the ends, which is 3 inches, and that gives us a length of 93 inches for the wider section and 45 inches for the shorter one. It takes 15 pieces of 2x4 for the wide section and 9 for the shorter one.

Once assembled, each section gets moved into place. We offset the short and long pieces from the ramps so that the seams do not all align. This gives it more strength when we bolt it all together in the next step!", project_id: halfpipe.id)

halfpipe_step_6 = ProjectStep.create!(heading: "Step 6: Bolting the Pieces Together!", body: "With everything in place and aligned, we'll now use 0.5 inch galvanized bolts and secure everything together. We clamped the pieces together so that everything would stay in place and then drilled holes for the bolts through both pieces.

For the quarter pipes, we put two bolts along the top, two along the bottom, and two along the slope. For the flat sections, we put two bolts along each edge, which secures the entire structure together.", project_id: halfpipe.id)

halfpipe_step_7 = ProjectStep.create!(heading: "Step 7: The Steel Coping!", body: "Along the top edge of the slope and sitting in the notch is going to be the steel coping. This is used for the skateboard to slide across when you get to the top of the ramp. It has to be steel because it takes a beating from the skateboard, plastic or any softer metal like aluminum will dent or get broken.

For each side, we need a piece of 2 inch black steel pipe that is 12 feet long. We had to go to a metal supply store to find this since our local hardware stores didn't carry anything this large.

The exact pipe we used was 2 inch OD Schedule 40 Black Steel Pipe.

The pipe sits squarely in the notch, but to attach it securely to the ramp, we'll need to drill holes every 2 feet along its length and then screw it to the ramp. On the front of the pipe, we drill a hole that is 3/8 inch diameter, and in the same place in the back we drill a smaller hole that is 3/16 inch. The hole in the back is wide enough for a screw to pass through it and the hole in the front is a bit wider to make room for the head of the drill.

Drilling through steel is difficult! We recommend using cobalt drill bits for this, as well as using a lubricant like a 3-in-1 oil to keep the drill bits lubricated as they're cutting. It's possible with lower quality drill bits but can take a very long time.", project_id: halfpipe.id)

halfpipe_step_8 = ProjectStep.create!(heading: "Step 8: The Plywood Sheathing!", body: "Next, we'll sheath the entire ramp in plywood! We start with the upper decks and we use 3/4 inch plywood for this. This is the flat area on top where you stand. We make sure the front side is pushed tight up against the coping and then cut trim it to be flush with the back edge.

For covering the ramp face, we're going to use two layers of 3/8 inch thick plywood and then a final layer of 1/8 inch on top. Start by pushing a sheet of 3/8 inch tight against the coping and screwing it down to the 2x4s below. Repeat it all the way across the ramp, making cuts as needed until the entire thing is covered.

It's important to have help at this step so that you can have one person push down hard on the sheet of plywood so it bends into shape, while you or another person screws it down.

The second layer of 3/8 inch goes on next, but we want to offset it from the layer below so the seems don't fall in the same place. Start by ripping a sheet in half and then repeat the process by pushing it tight to the coping and working your way down. It uses the same amount of material but offsets everything by half a sheet.

If you're a perfectionist like we are, you can then use a flush trim router to trim all of the edges of the plywood so everything is perfectly flush and nice looking.", project_id: halfpipe.id)

halfpipe_step_9 = ProjectStep.create!(heading: "Step 9: The Top Layer of Plywood!", body: "Technically, we could stop at this point...but we're going to add one more layer of thinner plywood on top to give it a much smoother ride. We're going to use a 1/8 inch thick hardwood plywood but there are many different options people use for the top layer, depending on your budget. There are even skate ramp specific materials like Skatelite that are weather-proof and built just for this.

The main thing to consider for this is that since we're building an outdoor ramp, it's going to get rained on...a lot. We don't get snow here, but we do get a tremendous amount of rain so we want to make sure that whatever we use doesn't get ruined by water. If you live in a very dry area, masonite might be a better choice for you. Whichever material you use, we recommend putting a small 1/16-1/8 inch expansion joint in between the sheets to account for any wood movement. As the moisture in the air changes with humidity, wood will move a little, so we want to leave room to allow for this.

When we install this final layer, we rotate it 45 degrees and put it on diagonally. This makes it so all of the seams are angled and your wheels will never hit a seam at the same time, leading to a smoother ride. It also helps so that the screws aren't all in the same place as the layers below it. Also, it looks awesome.

We started by aligning one edge and working our way up and across. Since it's a perfect 45-degree angle, it actually takes the same amount of sheets as if you were putting them on straight...you just end up cutting a few in half at an angle to fill in the triangle areas.

Lastly, and most importantly, you really don't want any screws sticking up on the top layer...so we used a countersink drill bit on each screw hole so that screws are slightly below the surface. You really don't want to fall on the ramp and slide across a screw sticking up...that would be bad. So, make sure each and every screw is slightly below the surface!

In the end, after all three layers of plywood, the coping should be about 3/8 inches above the riding surface.", project_id: halfpipe.id)

halfpipe_step_10 = ProjectStep.create!(heading: "Step 10: Painting the Mini Ramp!", body: "If we just left the plywood as is, it might last a little while outdoors but the rain and humidity would ultimately ruin it pretty quickly. In order to protect it and keep it lasting as long as possible, we painted the entire thing with an exterior latex house paint. We used the same color as our house so it matches a little better in the backyard.

We taped off the steel coping and did coats of paint on the entire thing. We then used a flexible acrylic elastomeric caulking in all of the expansion joints on the top layer of plywood. Since it's flexible caulk, it leaves room for wood movement from the humidity but still keeps water from penetrating underneath the wood. We then did a final layer of paint on everything!

It's been several weeks now and it seems to be holding up to the rain fairly well. Depending on your situation, you could also drill some small drainage holes in certain places so you don't get standing water on the ramp when it rains.", project_id: halfpipe.id)

halfpipe_step_11 = ProjectStep.create!(heading: "Step 11: Extras! the Climbing Wall and Slide!", body: "Our son is currently two years old so he's too small to ride a skateboard still, but we wanted him to enjoy the ramp in the meantime so we added a basic climbing wall to the back of it as well as a plastic slide! He can now climb up and down the ramp and then slide down either the ramp face or the slide off the back. He plays on it all the time and it's been great to see him getting familiar and comfortable with the ramp before he can even push on a skateboard.

We basically just screwed the board and slide into the back of the deck so it was secure and that's all we needed to do. We also made sure there were no screws sticking out of the bottom so we can climb around underneath it and have fun.

Eventually, we'll add a railing up on the top so he can't fall off the back but for now, he's never out there unsupervised so that will be a future project.", project_id: halfpipe.id)

halfpipe_step_12 = ProjectStep.create!(heading: "Step 12: The Results!", body: "Like most projects, we had a bunch of unexpected things happen but ultimately we were successful in creating an AWESOME backyard mini ramp that we can all enjoy together. We're excited to be able to give our son the option to get comfortable on and enjoy the ramp as he grows up. We're not sure if he'll like skateboarding yet, but at least he'll have the option to ride a great ramp.", project_id: halfpipe.id)

pergola_step_1 = ProjectStep.create!(heading: "Step 1: Conceptual Design and Planning", body: "All good designs start with a sketch.

I first started with a couple rough sketches on some scratch paper, just to get the idea out of my head. After that, I took measurements of my patio to determine the size of the pergola that could physically fit in the space. I have an added constraint in that the second story of my house overhangs the patio slightly, so I had to modify the typical pergola layout somewhat.

I find that generating a model in SketchUp is very beneficial to get a sense of the look of a project and its relation to physical space. There are even plugins that automatically generate a bill of material for the required wood pieces, saving having to tally everything manually.

Obviously, you're not married to your initial design, and you'll see as the project progresses that I deviated a bit from the initial design.

With your design settled upon, determine the required quantities of material and place the order at your local lumberyard. Fair warning, some boards may be special order and take a while to come in. I think my order ultimately took about a month to be delivered.", project_id: pergola.id)

pergola_step_2 = ProjectStep.create!(heading: "Step 2: Laying Out the Post Bases", body: "The first step in building the pergola is to lay out the locations of the post bases. This is one step where a bit of attention to detail can save you headaches down the road, so take your time to lay things out correctly.

Start by establishing a chalk line for one of the edges of your posts. I chose the front edge for convenience and because prior measurements showed that the concrete slab didn't have entirely square sides. This line will be the basis for your measurements from here on in.

Next, pick one side to start marking a line perpendicular to your first line. The easiest way to do this is with a couple of tape measures and establish a 3-4-5 right triangle. The 3- and 4-length sides will be the two perpendicular lines, and the 5-length is the diagonal distance between them. Thanks to geometry, we know that this forms a perfectly square corner.

Pick a point on your first line to be the Outer Corner of the post, measure 3 feet away from it, and place Mark number 1. Next, take your second tape measure and extend it to show the 4-foot mark, and put the leading end of it on the Outer Corner mark. Use the other tape measure, extended to show 5 feet, and put the leading end on Mark #1. Where the 4-foot and 5-foot marks intersect, place Mark #2.

Using your chalk line again. stretch it so that it intersects both the Outer Corner mark and Mark number2. Snap the line, which is now perpendicular to your first line. Repeat these steps on the other side. Satisfied that you now have three lines, two of which are perpendicular to the first, measure back from the two Outer Corner marks to establish the overall perimeter of your posts.", project_id: pergola.id)

pergola_step_3 = ProjectStep.create!(heading: "Step 3: Install the Post Bases", body: "With the perimeter of the posts marked, now it time to install the post bases. Starting at one corner, place the corner of the base at the previously-marked Outer Corner. Mark the center of the post base and move the base to the side.

Using the hammer drill and a 5/8 inch dia. carbide-tipped bit, drill on the center mark to a depth of about 7 inches. It's possible that you will drill entirely through your concrete patio since concrete thicknesses 4 to 6 inches are not uncommon for patios. Use a broom or air compressor blow gun to clear the dust.

Replace the post base to its previous location in the corner. With a ratchet and appropriately-sized socket or impact gun, tighten the Titen HD concrete anchor, fastening the post base to the concrete surface. There should be no play in the post base when you wiggle it.

Repeat these steps for all four corners of the pergola.", project_id: pergola.id)

pergola_step_4 = ProjectStep.create!(heading: "Step 4: Measure the Post Offsets Due to Patio Slope", body: "If your patio is anything like mine, it slopes away from your house for drainage. This presents the obvious problem that the posts can't be all the same length, otherwise the top of the pergola won't be level. To mitigate this, the post offsets must be measured from a reference point and all measured and cut accordingly.

The sill of my patio door proved to be a convenient reference point. In order to measure off these, I put together a couple scraps of wood to extend the reference line out to the same line as the post bases. Then I clamped this extension to the door sill to hold it in place and tied one end of a string line to it. On the opposite end of the line of post bases, I drove in a wooden stake and tied the string line to it. You'll want to make sure that the string line is very tight and is also level. This string line is now at the exact same elevation as the door sill.

When you're satisfied with the string line, measure the distance between the string and the bottom of the post base, and record this number. Do the same with the next post base in line, then repeat these steps for the other side of the pergola. You should have four measurements written down that correlate to each corner of the pergola. It will be convenient to name these A through D to keep things straight or some other naming scheme that suits your taste.

In my case, since I had to contend with the second story overhang, I also measured this height with respect to the door sill.", project_id: pergola.id)

pergola_step_5 = ProjectStep.create!(heading: "Step 5: Mark the Posts for Cutting and Trim to Length", body: "The length of the posts is determined based on the offsets measured in the previous step. Begin by marking each post A through D, and then measure from the bottom of the post the offset length you previously recorded for each. Use a square to transfer this line across the width of the post.

Next, start with the longest measured offset - let's say 10 inches for instance. The posts are 8 feet long, so the leftover length is 8 feet - 10 inches = 7 feet 2 inches. Measure the leftover 7 feet 2 inches from the offset marks you previously made on each post, and mark these at the top ends. Use a square to transfer this mark all around the posts so that you have a cut line wrapping around the post.

Using a circular saw, cut along this line on each post, then flip the posts to cut the opposite face from the first cut. Use a reciprocating saw to finish the cut, assuming that your circular saw doesn't cut all the way through with the first two passes.", project_id: pergola.id)

pergola_step_6 = ProjectStep.create!(heading: "Step 6: Mark Top Tenons, Cut Tenons, and Chamfer Edges", body: "The tops of the posts need to be cut into a tenon to hold the secondary beams. To do so, measure down from the newly-cut top of the posts to the depth of the secondary beams, in this case 7-1/4 inches for the 2x8 boards. Make a mark and square it across the width of the post with a speed square. Transfer this mark all around the post.

Next, measure in from one face to the thickness of the secondary beam, 1-1/2 inches for these. Mark this for the full depth of the beam, which I did with a combination square, but which you can easily do by making two marks and connecting them with a straight edge. Do this for both opposing faces of the post to establish the cut lines for the tenon.

Using the circular saw, set it to cut the depth of the secondary beam 1-1/2 inches, and make a cross-cut to establish the shoulder of the tenon. Roll the post and make the same cut on the opposite face.

Reset the circular saw to its maximum cut depth and roll the post 90 degrees to begin cutting the cheeks of the tenon. You want to stop when the saw blade meets the shoulder cut that you previously established. Don't over-run the shoulder cut, or your joint will look quite bad. Make the other cheek cut on the same side of the post, then roll it to cut the cheeks on the opposite face. Finally, finish the cut with the reciprocating saw.

This next step is optional, but I highly recommend it. Put a 45-degree chamfer bit in a palm router, and use this to ease the edges of the post from bottom to top. Not only does this provide a pleasing look to the posts, but it also protects the corners from splintering off from an errant bump and also softens the corners should someone run into them.", project_id: pergola.id)

pergola_step_7 = ProjectStep.create!(heading: "Step 7: Plumb the Posts and Attach to Post Bases", body: "Now to start making the pergola take shape!

We're going to start by raising and plumbing the posts. At one of the corners, place a post in the post base, but laying down on the ground. Pound in a wooden stake about 6 feet away from the post base next to the laid-down post, and another one 90 degrees around the post so that you can brace from both sides. Take two of the spare 2x4s, and attach each at each of these stakes with a single nail for now, and lay them down also.

Stand the post up and grab one of the braces you previously laid down, and bring the brace around into contact with the post. Using the 4-foot level, plumb the face of the post aligned with the brace. Once satisfied with the plumb-ness of the post, use a nail to tack the brace in place.

Grab the other brace, and repeat the steps above to plumb the post from the other direction. Double check that the post is still plumb in both directions, then go ahead and drive another couple nails into the brace at either end.

Now, take your drill with a drill bit slightly smaller than the HeadLOK screw, and pre-drill holes to match those in the post base. Drive in the HeadLOK screws into these holes. For these particular post bases, there are four holes total, with two on each side. At this point, your post should be secure top and bottom and shouldn't move when casually jostled.

If, like me, you're building this pergola close to a house, you may have to brace the adjacent post against the first one, as in the last three pictures.", project_id: pergola.id)

pergola_step_8 = ProjectStep.create!(heading: "Step 8: Cut the Secondary Beam Tails", body: "Calling these secondary beams might seem a little odd since they go in first, but since they resist practically no bending load, I thought the term was fitting.

Bring over the 2x8x10ft secondary beams from the pile and set them on the sawhorses. Trace out a pleasing curve or other shape on the tail of the beam. I opted for a simple curve on mine, but feel free to be as creative as you please.

Using a jigsaw, cut out the tail of the beam. With the cutoff piece, trace the remaining tails of the beams, and proceed to cut them out too.", project_id: pergola.id)

pergola_step_9 = ProjectStep.create!(heading: "Step 9: Install the Secondary Beams", body: "This is one step where having a clamp or two is helpful. Hoist one of the secondary beams up to the top of the posts and rest it in the notch cut previously. If you have a clamp, use it to hold the beam in place. If not, hopefully someone can hold it there for you, otherwise you might be rolling the dice with it possibly dropping on your head.

Using the drill, pre-drill three holes in a triangular pattern like a play button ▶️ where the beam sits on the post. Then drive home three of the HeadLOK screws to fasten the beam to the post. Repeat this on the other end of the secondary beam.

Place the second secondary beam on the opposite side of the post, and repeat the steps above to fasten it. Then, at the other end of the pergola, install the remaining two secondary beams. If you braced one post back to the other, as I did, you can remove this at this point since the beams are providing the same function.", project_id: pergola.id)

pergola_step_10 = ProjectStep.create!(heading: "Step 10: Cut the Main Beams", body: "The main beams are made from the 2x8x14ft boards. Bring these over to the saw horses, trace out, and cut the tails, same as you did with the secondary beams.

Next, roll all of the beams such that the bottom edges are facing upwards and clamp them together. We're going to measure, mark, and cut out the half-lap notches where the main beams overlap the secondary beams.

Measure the distance between the secondary beams at the top of the pergola, and also the distance between adjacent secondary beams where they attach to the posts. Mark these distances on the main beams, being sure to center everything on the length of the beam so that the overhang is the same on both ends. I would suggest adding a heavy 1/16 inch oversize on the thickness allowance for the secondary beams, just to allow the main beams to fit over them a little easier. Don't overdo this though, otherwise the fit will be too sloppy.

Set your circular saw depth to about 1-1/2 inch cutting depth and cut just inside the lines you marked, which form the walls of the half-lap notches. Then, use the circular saw to cut between these lines 5-7 times, effectively making the notch look like ||_||_||_||_|| when viewed from the side. This will make it easy to knock the waste out with a chisel, and use the chisel to clean up the bottom of the notches.

Pro Tip: if you have a router with a flush trim bit, you can use this to very quickly smooth the bottoms of the notches. I bought one half way through the project and so did not use it here.", project_id: pergola.id)

pergola_step_11 = ProjectStep.create!(heading: "Step 11: Install Main Beams", body: "Unclamp and hoist a main beam up to the top of the pergola, resting it on the secondary beams. Roll it over and slip the half-lap notches over the secondary beam, butting the main beam up against the posts. You may have to persuade it into position with a mallet or sledge.

Once you're satisfied with the location, toe-nail it in place onto the secondary beams. Since these beams won't take much loading besides the vertical dead load, there is no real need for more than one nail at each half-lap joint. If you're using a nail gun and the nail doesn't get set down enough, drive it home with a hammer and adjust the settings on your nail gun so the nail travels further.

Repeat the above steps for the remaining three main beams.

NOTE: At this point, it may be prudent to install the braces, Step 17, especially if you won't be able to finish the pergola in the near future. The braces will protect against the pergola from falling over in high winds, and also add a lot of stiffness to the structure when crawling around on top later. I opted to install the braces at the very end, which perhaps wasn't the smartest idea in hindsight.", project_id: pergola.id)

pergola_step_12 = ProjectStep.create!(heading: "Step 12: Cutting the Rafters", body: "With the main beams in place, measure the distance between the main beams on one side of the pergola and check it against that measurement on the other side. If those two measurements are the same, great. If not, then you'll have to customize your half-lap cuts for each rafter, which is a pain.

The rafters are the 2x6x10ft pieces. Bring these out, trace a new end treatment, and cut them out on all rafters, like the beams before. For my situation, the back of the rafters was against the siding of the house, so I left these ends square and only cut the fronts. Your situation may vary.

As before with the main beams, measure out and mark the half-lap notches for where the rafters overlap the main beams. Set your circular saw at about 1 inch depth, cut, and chisel out the notches.", project_id: pergola.id)

pergola_step_13 = ProjectStep.create!(heading: "Step 13: Installing the Rafters", body: "Mark out the rafter locations on the main beams. This is easily done by measuring the distance you want the rafters to spread over and divide by the number of rafters minus 1. For example, say the distance is 100 inches and you have 11 rafters. Your center-to-center spacing would be 100 inches / 11 - 1 = 10 inches. Mark the locations on one of the beams at each end of the pergola so that you can line them up parallel from front to back.

Installation of the rafters is exactly the same as the main beams, just that there are more of them.", project_id: pergola.id)

pergola_step_14 = ProjectStep.create!(heading: "Step 14: Cutting the Purlins", body: "For my purlins, I used 2x4x14ft boards. Again I traced a simple curve on the ends and cut them with a jigsaw. After this, I flipped them bottom-up, lined the boards up, and clamped them together. Most likely the boards will all have some slight bend to them, so you may have to fiddle with the boards to get the bottom edge relatively even across all the boards.

Marking the half-laps where the purlins fit over the rafters uses the spacing determined in the previous step. In the previous example, a 10 inch spacing was determined, and 11 rafters total were used. Since the number of rafters is odd, one of them should be in the exact center of the purlin. You can then measure 10 inch increments on either side for spacing out the purlins, and then mark out the thickness of the rafters to cut the notches.

For cut depth here, I would use about 3/4 inch on the circular saw. Given all of the lap joints, cutting and chiseling them will take a little while. This is where the flush trim router bit comes in real handy when smoothing the bottoms of the notches.", project_id: pergola.id)

pergola_step_15 = ProjectStep.create!(heading: "Step 15: Install Purlins", body: "Similar to the before, determine the spacing of the purlins on the rafters. Mark this spacing on either side of the pergola. If you have two people, it's then a relatively simple matter to stretch a chalk like across the pergola and snap marks for each purlin on the tops of the rafters. If you're working by yourself, as I was, this is also possible, though much more time-consuming.

Install the purlins in the same manner as the rafters and main beams. I found that, in a few spots, I had to clamp the purlin to the rafter at the half-lap because one of the boards had a bend in it and they weren't making full contact.

Once all the purlins are installed, the top of the pergola is done!", project_id: pergola.id)

pergola_step_16 = ProjectStep.create!(heading: "Step 16: Cut, Glue, and Nail Braces Together", body: "Ok, home stretch!

The braces for this pergola are simple double 2x6 pieces, glued and nailed together. I had originally planned on cutting a fancy design into these but ultimately opted against it. Who knows, I may revisit later.

Mark a 45-degree cut at the end of one of the 2x6x8ft boards, and another one 4ft away from that. Make both cuts with the circular saw, then take the cut-off piece, lay it against the first board, and use it to trace the final 45-degree cut. Make this cut as well.

Squeeze out an exterior-rated glue Titebond III, in my case on one of the pieces and clamp the other piece to it. Nail the two boards together in a zig-zag pattern, with nails spaced about 6 inches apart.

Repeat for all braces.", project_id: pergola.id)

pergola_step_17 = ProjectStep.create!(heading: "Step 17: Install Braces", body: "Since my pergola is asymmetric from front to back, the rear braces are installed a little differently from those in the front. Your situation may be different, so please adapt as necessary.

Clamp the brace to the post if possible and to the beam at the other end. Once satisfied with the location, pre-drill four holes at each attachment point, and drive in HeadLOK screws to fasten the brace to the post and the beam.

If your brace butts against the post last two photos, then pre-drill angled holes in the brace and fasten that way.

Repeat until all braces are installed.", project_id: pergola.id)

pergola_step_18 = ProjectStep.create!(heading: "Step 18: Finished!", body: "Congratulations! You've completed your pergola! Take a couple minutes to walk around it and admire your handiwork.

I hope you've enjoyed reading my Instructable, and more importantly, I hope I've given you enough detail that you can tackle this project yourself. If you have any questions, please feel free to ask them in the comments and I will help as much as I can.", project_id: pergola.id)

spool_step_1 = ProjectStep.create!(heading: "Step 1: Tie the Line Around the Fishing Reel", body: "Open the bail on the fishing reel and run your line through it. Take the line and wrap around half of the reel. Tie an overhand knot two times. Once the knots are tied, pull the line tight. Then cut the tag end of the line off so it does not make a mess in the reel.", project_id: spool.id)
spool_step_2 = ProjectStep.create!(heading: "Step 2: Run the Line Through the Line Roller", body: "Once the tag line is cut, close the bail on the fishing reel. Make sure to have the line running through the line roller. Have someone hold the spool of line while reeling. If not done right the line will become tangled.", project_id: spool.id)
spool_step_3 = ProjectStep.create!(heading: "Step 3: Hold the Line Tight", body: "Hold the line tight and start turning the handle. Holding the line tight causes it not to get tangled up on the reel. If the line is not tight on the spool, it will become tangled when trying to cast.", project_id: spool.id)
spool_step_4 = ProjectStep.create!(heading: "Step 4: Start Reeling at a Nice Pace", body: "While turning the handle go at a nice pace. If turning to fast or to slow, the line will get tangled and there will be a mess. On the reel, it will have a specification on how many yards of line to put on the reel. If too much line is put on, the line will become tangled up and create a mess. If this happens, pull some off the spool and cut it.", project_id: spool.id)
spool_step_5 = ProjectStep.create!(heading: "Step 5: Tuck End of Line Under the Line Holder", body: "Once the proper amount of line is put onto the reel, cut the line from the spool and tuck it under one of the holding tabs until ready to use. On the other hand, if ready to use, run it through the eyelets on the rod.", project_id: spool.id)

solar_balloon_step_1 = ProjectStep.create!(heading: "Step 1: What You'll Need", body: "All you need are some thin black trash bags, cellophane packing tape, scissors, and a piece of string. Look for trash bags that are .3 mil to 1 mil in thickness— the thinner, the better. Likewise, thinner tape is best to reduce the overall mass of the balloon.

As an Amazon Associate I earn from qualifying purchases you make using my affiliate links.

It's best to pick a sunny day with calm wind conditions for this project. It can be particularly frustrating to try to build the balloon when it's windy, so consider assembly indoors if it's breezy.", project_id: solar_balloon.id)

solar_balloon_step_2 = ProjectStep.create!(heading: "Step 2: Trim Bags", body: "Leave one trash bag with the bottom seam intact, then cut off both the seam and the flaps (if any) on two more bags. On the last bag I cut off the seam, but not the flaps, since they'll be at the opening of the balloon however flaps are not required.", project_id: solar_balloon.id)
solar_balloon_step_3 = ProjectStep.create!(heading: "Step 3: Tape Together", body: "Open up and overlap the trash bags together by about an inch, then tape around each seam. Make sure you don't have any gaps or holes.", project_id: solar_balloon.id)
solar_balloon_step_4 = ProjectStep.create!(heading: "Step 4: Inflate Your Balloon", body: "Run around to fill your new balloon with air. Gather up and tie off the open end of the balloon, topping it off with air from your lungs if you're up to it or a hair dryer. Tie a knot in the gathered end to close up the balloon.", project_id: solar_balloon.id)
solar_balloon_step_5 = ProjectStep.create!(heading: "Step 5: Tether & Enjoy!", body: "Tether your balloon with some string and put it out in the sun, where it should heat up and start to float. The heat generated inside the balloon decreases the air density, which creates lift. This is the same reason objects float in water, and is described by Archimedes' principle. Since the balloon heats up slowly, the increasing upthrust from the slowly changing pressure inside can be observed in the time it takes to explain the science behind it. It's very important not to let the balloon go. Not only is it bad for the environment, but it could be deadly if it gets into an airplane's engine. When you're ready to deflate it, be careful because the surface will be hot. Cut a hole and start to squeeze out the air.

This project is part of my free Solar Class, where you can find another backyard project and several lessons on working with solar panels. Check it out and enroll so you can post photos of your builds!", project_id: solar_balloon.id)

wood_trivits_step_1 = ProjectStep.create!(heading: "Step 1: What NOT to Do", body: "Here is what NOT to do...

I made these other wooden trivets almost 15 years ago. The one on the left is cherry, and the one on the right is maple. They've been used almost daily since then. These were an extremely simple project, as you just take a piece of square wood and then run it over the dado blade to make grooves. The cuts are halfway through the board, and after each cut you flip the board over, turn it 90 degrees, and make another cut. The result is the pleasing waffle-type look to the trivet.

The downside is that the one on the left is rather fragile, since the cuts were so close together. First the remaining strips of wood are just very narrow, so they break easily. But also remember that half the cuts are cross-grain cuts, which means the leftover wood is that much more fragile. cross-grain bits of wood can snap very easily.

The maple trivet was not so fragile, as I left wider strips of wood behind, but this one warped almost immediately. This is possibly because it's a trivet, so it may be exposed to damp pots. Or more likely it is because I removed so much wood that it lost a lot of its' inherent strength and rigidity from the original board which allowed the wood to move in this way.

Bear in mind, I'm a woodworker. So I like making new things, and I always have extra scraps of wood laying around. So it is really no big deal to make some new trivets. But on the other hand, that doesn't mean that I want to intentionally make something that is fragile or prone to warping.", project_id: wood_trivits.id)
wood_trivits_step_2 = ProjectStep.create!(heading: "Step 2: Plans and Prototype", body: "After some consideration, I settled on this as one design that I wanted to make - a series of holes. There is one hole in the center, then another set of holes arranged in a circle around that, and then a second set arranged in another larger circle. I drew this up in Sketchup, printed the pattern out at 100% and used it as a template to drill out the 3/4 inch diameter holes.

I grabbed a scrap of cherry wood, planed it down to a bit over 1/2 inch thick, 1.25cm, and used it as a prototype to test out the hole-drilling pattern. It turned out great and so I'm keeping the prototype.", project_id: wood_trivits.id)
wood_trivits_step_3 = ProjectStep.create!(heading: "Step 3: Glue Up Small Strips", body: "I went digging through my stash of exotic offcuts and glued together small strips to make up my trivet blank.

In this one there is a strip of Padauk in the centre, the reddish wood. Moving out from the centre are two strips of Maple, thin white wood, followed by two strips of Cherry, followed by two strips of Osage Orange, the yellowish wood, two more strips of thin Maple, and finally two strips of White Oak on the outside edges.

This is exactly how I make cutting boards also, but since trivets are so small I can use up some even smaller strips of wood. Many of these would otherwise be destined for the burn box.

I glued and clamped all the strips together and then planed them down. The third photo shows my other glued up panel. This one also has a strip of Padauk in the centre. Moving out from that are two thin strips of Maple, two strips of Walnut, two more thin strips of Maple and then Cherry and finished off with some not-so-white Maple.", project_id: wood_trivits.id)
wood_trivits_step_4 = ProjectStep.create!(heading: "Step 4: Glue, Pin, Clamp", body: "I trimmed the pieces down, slathered on the wood glue, and then glued two pieces together, orienting the two layers at 90-degrees from each other.

My rough blanks were wider than 6 inches, 152mm, so I could use some 23-gauge pins right along the edge to prevent the two pieces from slipping around when clamped. It looks like a ridiculous amount of clamps in the third photo, but I want to be sure to get a good connection along the whole surface -- I'm not clamping that tightly, I'm just making sure there is pressure everywhere on the two faces.

'I have enough clamps' -- said no woodworker, ever.", project_id: wood_trivits.id)
wood_trivits_step_5 = ProjectStep.create!(heading: "Step 5: Drill Dril Drill", body: "I was almost tempted to stop at this point, since the two pieces were gorgeous when cut to size. Having the two faces oriented at 90-degrees to each other gives a cool look.

Note that I also prepared a walnut 6x6 blank, 152x152mm, out of some scrap wood that I had found. The cherry prototype had turned out so well that I thought I'd make another.

I trimmed the trivet blanks to final size of 6x6in, 152x152mm, and proceeded to drill out my hole pattern. Here I have used spray adhesive to attach the pattern, and then just drilled through the pattern.

There are actually two boards taped together, so I am drilling two trivets at the same time.", project_id: wood_trivits.id)
wood_trivits_step_6 = ProjectStep.create!(heading: "Step 6: Cutting Dado Slots", body: "I then set up a 1/4 inch dado blade (6mm) in the tablesaw and set that to just a hair above halfway through the trivet blank. I then cut three times through each face of the piece. One cut was centred on the central Padauk strip, and the other two cuts were centred on the the two walnut strips.", project_id: wood_trivits.id)
wood_trivits_step_7 = ProjectStep.create!(heading: "Step 7: Rounding and Finishing", body: "I then took the pieces to the router table where I used a 3/16 inch roundover bit, 4.75mm, to round the edges of the piece.

After that I used a roundover bit in the palm router to round over the edges of the holes that I drilled through the trivets. I had tried this on the router table, but it just felt safer to me using the palm router.

After that came finish sanding and a few coats of spray lacquer.", project_id: wood_trivits.id)

arduino_grow_box_step_1 = ProjectStep.create!(heading: "Step 1: Building the Housing Cube", body: "Requirements:

Adhere to the volumetric constraints, a 50cm cube.

1. Using the plexiglass sheets from the supply list, draw a 50cm by 50cm square. Ensure that all angles are equal otherwise the cube will not fit together.

2. Use a plastic cutting tool like the one listed in tools or a dremel with a cutting bit, Plastic tool works much better, and cut out your first square face. This square will act as a template for the next 5 faces for the cube.

3. Once cut, clean up the edges and use this square as a template and create 5 more faces.

4. To assemble the cube you must do half at a time. Before assembly Two 1/2 inch holes, one on the top and one on the bottom need to be drilled in the center for the cylinder supports. I laid out 3 squares in an L shape and connected the edges temporarily with clear tape. Once the bottoms are secure with tape lift the two sides and secure them with tape as well.

5. Repeat step 4 for the other half of the square faces then place on half on top of the other and use tape to secure them together.

6. Once secure, start attaching brackets to edges, first drilling, then placing screws. DO NOT bracket every edge! One face should be left completely detachable. This face will become the door.

7.Using hinges of your choice place them on the remaining cube face.

8. I used 100% clear silicon to seal edges, however, this is optional. REMEMBER, DO NOT silicon the door closed.

9. Set aside for later use.", project_id: arduino_grow_box.id)
arduino_grow_box_step_2 = ProjectStep.create!(heading: "Step 2: Building the Lighting and Waterpump Circuit", body: "This circuit is very simple to minimize overall footprint and decrease potential malfunction. Using an Arduino Uno R3 or other off brand microprocessor we will control the LED and waterpump function. They will both be on individual schedules. While in space water must be rationed therefore we need to build a system capable of releasing only the required amount of water for each plant.

Pinout

Arduino Board ---> Two Channel Relay

5v to VCC

GND to GND

Pin 12 to IN2

Pin 13 to IN1

Since there are so many available pins this project could incorporate more sensors to enhance functionality of the growth system. Some things I may add are temp/humidity sensor and LCD to display remaining run times for lights and water. These features will be useful for ventilation.", project_id: arduino_grow_box.id)
arduino_grow_box_step_3 = ProjectStep.create!(heading: "Step 3: Code", body: "First, declare all of the pins and constants. This time schedule can be refined to optimize plant growth.

const int LED = 12;
const int WATERPUMP = 13;

const long onDurationLED = 43200000; //On time for LEDs

const long offDurationLED = 28800000; //Off time for LED

const long onDurationWATER = 20000;//On time for waterpump

const long offDurationWATER = 36000000;//Off time for waterpump

int LEDstate =LOW;//initial state for LED is ON

int WATERstate =LOW;//initial state for waterpump is ON

The setup and void sections establishes the rules for the timed events. It doesn't need to be adjusted if you want to change ON/OFF durations, use the constants above. If you hook up the relay in normally open you will need to change the HIGH and LOW values accordingly. Download the code to view it.", project_id: arduino_grow_box.id)
arduino_grow_box_step_4 = ProjectStep.create!(heading: "Step 4: LED Setup", body: "I cut the LED into strips because it didn't lay flat in a serpentine shape.

1. Cut the strip on the markings at roughly 8-12 inches.

2. Solder the pads and connect each series.

3. I used extra jumper cables I had laying around to save money but any combination of pins and wires will work.

4. Periodically test the strip to ensure each section is connected properly and in series.

5. Evenly space 8 strips on the bottom and top of the cube ensuring the power connector is on the bottom near an edge.", project_id: arduino_grow_box.id)
arduino_grow_box_step_5 = ProjectStep.create!(heading: "Step 5: Irrigation Setup", body: "1. Connect a single strip of tubing long enough to loop around to the second port. Approx. 15inches

2. Using misting nozzles and t-barb splitters, connect 5 misters evenly around the loop I alternated spray direction.

3. Connect male to hose connection to the port manifold and attach 19 inches of 3/8 inch tubing to the hose connection.

4. Set aside", project_id: arduino_grow_box.id)
arduino_grow_box_step_6 = ProjectStep.create!(heading: "Step 6: Building the Cylinder", body: "Be very careful when drilling acrylic it is very fragile and prone to cracking. I used a 2 inch forster bit to drill holes for the net pots.

1. Using a plastic knife or dremel cut out two circles with a diameter of 16 inches.

2. Start to drill holes for the pots. I drilled as many holes as possible with at least 1 inch spacing. Drill as many as you would like.

3. Drill a 1/2 inch center hole in each circle.

4. You can start to glue pots in. I use a plastic bonder, super glue didn't work that well.

5. Cut a piece of the landscape edging equal to the circumference for your cylinder. formula is 2*pi*r or just google it

6. I did one side at a time using plastic bonder. Applying liberally to the edges of the edges. Once full coated I laid the circular piece on top and weighed it down. Don't use too much weight.

7. After about 15 minutes you should be able to repeat for the otherside. However, REMEMBER to insert the misting nozzle inside with the hose protruding the centered hole.", project_id: arduino_grow_box.id)
arduino_grow_box_step_7 = ProjectStep.create!(heading: "Step 7: Final Asssembly", body: "1. I used a variety of 1/2 inch diameter PVC and male to male attachments to support the cylinder. The same effect can be obtained by cutting two lengths of PVC for the top and bottom of the cylinder. Since my cylinder was roughly 5 inches I cut my pvc to about 6.5 inches to compensate for attachments. All of these parts can be found at the local hardware store. The main idea is to have two main support pieces secured to the top of the cube and top of the cylinder then the bottom of the cube and cylinder.

2. The bottom support must be hollow so the tubing from the irrigation can run through the bottom of the cube.

3. The top support I used is also hollow. This is not necessary for earth operations, but provides access for a suction pump in space. This pump can be used to pull out unused moisture and return it to the ships reclamation system.

4.After assembled the cylinder should spin freely. This allows for easy access to tend to or harvest plants.

5. I attached all of the electrical equipment to the outer cube side closest to the LED power connector.

6. The pump on the bottom attached to a water source. Ideally on the space station this could be hooked into the onboard plumbing.

7. I also used some extra net pots as feet to prevent obstruction of the irrigation.

8. To actually grow something you need 2 inch foam clone collars found on amazon or other hydroponics stores

9. Add clone to collar and insert into net pot

10. Seeding is possible with clone collars as well I was able to germinate basil", project_id: arduino_grow_box.id)
arduino_grow_box_step_8 = ProjectStep.create!(heading: "Step 8: Conclusion", body: "This grow system has really came to life. The aeroponics system has great potentiaI. Using 3-dimensional geometric figures may solve the problem on the space station. This is only one example of over 6 million different geometric shapes. By utilizing geometry we can scale this system to benefit the different stages of plant development from seed to harvest with minimal effort. This cube is also very easy to disassemble and assemble through the use of brackets as opposed to a frame. This can be quickly disassembled and stacked for shipment.

I had an amazing time building this project and learned so much. I have really opened up to indoor growing as a hobby and decor. The combination of nature and technology is amazing and has no limitations.

If you have any questions let me know.", project_id: arduino_grow_box.id)

led_shpere_step_1 = ProjectStep.create!(heading: "Step 1: Watch the Video!", body: "Check out the full making of the LED sphere video. It will give you a clear overview of the whole process. Sure it does not contain the details but that would be too boring. The details are described on this very page below. Watch the video and go through the steps here.", project_id: led_shpere.id)
led_shpere_step_2 = ProjectStep.create!(heading: "Step 2: Gather All the Tools and Material", body: "Tools:

Narrow pliers
Round-nose pliers
Side cutters
Soldering station
Tweezers
Bending machine haha, no just kidding. That would be a show stopper for everybody. You just need some round objects to be at the diameter of the rights - beer cans, spray cans...
3D printer
Material:

0.8mm brass wire - you can use copper or steel as well but they've got some disadvantages
Tin Solder
Soldering Flux
Electronics components:

ESP32 board with battery support - it has to fit the sphere! For example TTGO T8 or FireBeetle ESP32
WS2812b RGB LEDs - 200 pcs
1000mAh LiPo battery", project_id: led_shpere.id)
led_shpere_step_3 = ProjectStep.create!(heading: "Step 3: Template Is the Key", body: "It would not be possible to create such a complex shape without a proper template/jig/mold. I've designed mine to be 3D printed. The template consists of 4 pieces that are bound together by two rings - like a barrel. The 4 pieces are crucial here. If done in one piece, the final half-sphere would be stuck in. The template is designed for one half of the sphere. Don't worry you can reuse it for the second half as well.

The 4 pieces are 2 kinds because the sphere is not completely symmetrical. Print 2 of each STL files attached to get the complete template.", project_id: led_shpere.id)
led_shpere_step_4 = ProjectStep.create!(heading: "Step 4: Start With the Wire Rings", body: "The sphere consists of 11 LED rings, each ring is formed of 2 wires in the form of a circle and some amount of LEDs. For the full sphere you will need 22 wire circles in total. It's not that simple, however. Each ring is of a different size. To make it easier for you, I've prepared a sheet of paper with a complete drawing of ring shapes for the one half-sphere. It's not completely accurate through.

Keep in mind the final shape of the sphere will mostly depend on how accurate your bending is in this stage. If the wire circle is not nicely round and even, the shape might be crooked at the end. I've used my wire bending machine for the perfect shapes.", project_id: led_shpere.id)
led_shpere_step_5 = ProjectStep.create!(heading: "Step 5: Placing LEDs", body: "Place LEDs into the most bottom ring in the template. The first one consists of 8 LEDs. I've marked all the GND leads of the LEDs from the bottom with a black permanent pen to be able to recognize where the GND (VSS) pin is located. Place all LEDs in a such a way that the GND pin faces the inner ring, and VCC lead the outer ring. This is important! Each ring will be exactly like this! Inner wire ground, outer wire power. See the picture above. I've dipped each LED in the flux before I inserted it so it would hold in the slot better.

Insert the inner ring and solder all the GND pins to it. Insert the outer ring and solder all the VCC pins to it. VCC pins is located diagonally from the GND pin. Make sure the rings are not connecting any of the DATA, DIN and DOUT, leads of the LEDs.

Repeat until you have 6 rings:

8 LEDs
14 LEDs
18 LEDs
20 LEDs
24 LEDs
26 LEDs
Note that you only need one 6th ring for the whole sphere - it's the middle ring. So include it only in one of the two halves - the first one would be 5 rings, the second one would be 6 rings for example.

WS2812b LED

For those who are not familiar with this LED. This is an individually addressable RGB LED. Simply speaking you need only one wire to lit it with any color of a rainbow. In contrast to classic LEDs where you adjust the brightness of LED by the amount of current flowing, WS2812b is constantly powered and the light is controlled via digital signal. You tell it what color it should show. You might ask: So it only needs 3 leads rights? The 4th lead is used to feed the next LED in the chain with the control signal. Yes! That is the best feature. You can have a looong strip of these and still control all of them with just one wire. You simply feed the first LED in the chain with the instructions for the other LEDs and it will keep forwarding them. Datasheet", project_id: led_shpere.id)
led_shpere_step_6 = ProjectStep.create!(heading: "Step 6: Interconnecting Data Lines", body: "Power lines are the wire rings, you already have that. Now you need to also connect the other 2 leads of the LEDs - DIN and DOUT. DIN is located next to the GND pin and DOUT next to the VCC pin. I've used 5mm long wires to do the job. This is also really important to do properly. Make sure the data wires are not touching either ground or power rings. Make sure not to solder the data pins to the power rings.

Do this one ring after another start with the most inner one. When you reach a point where you would interconnect the LED you started with with the lat one, it's time to jump to the upper ring. I've used C-shaped jumper wire to connect data pins of two subsequent rings. The C-shape is needed because you need to bypass the ground and power wires. Continue with the next rings until you have all the LEDs connected into a long snake. You should end up with only two leads not connected - one at the very top ring. That should be the master DIN for the whole half-sphere. And one DOUT pin at the very bottom.", project_id: led_shpere.id)
led_shpere_step_7 = ProjectStep.create!(heading: "Step 7: Connecting Power Lines and Starting Over Again", body: "The last step in making of the one half-sphere is to interconnect the power lines between the rings. Not only to connect them but also to create a structure that will hold the rings together. I've used again C-shaped jumper wires to connect power and GND wires of adjoining rings. Use at least 4 jumpers at the first 3 smaller rings and 8 jumpers at the bigger ones. This amount will ensure the sphere will be strong enough.

Time to relax

Now it's time to take the half-sphere out of the mold! It's the most relaxing part after such long hours of soldering. First, take off the plastic rings that hold the 4 parts of the mold together. And start to firmly remove each part. Be very gentle here to not break any LED in the process!

Happy with the first half-sphere? Good! 🎉 Now start over and create the second half-sphere. Once again the half-sphere has a different number of rings. If you made the first one 6 rings, the second will be only 5 rings and vice versa.", project_id: led_shpere.id)
led_shpere_step_8 = ProjectStep.create!(heading: "Step 8: Testing the Half-Spheres Out", body: "Do you have both half-sphere ready? It's now a good time to test them both before you assemble them into the sphere. I know it's tempting to finish it right away, but trust me you better test it.

First, do a simple test with a multimeter and check for shorts between power wire and ground wire. Then solder two short wires to each of the half-spheres ground and power wire. Connect power wires to 3.3V pin of the ESP32 board and ground to ground.

In the end, all LEDs are connected to one long chain. That means the half-spheres are also chained. Took the smaller one, 5 rings, and connect its DIN to the pin IO21 of ESP32 board and its DOUT to the DIN of the second half-sphere. Now you are left with only one not connected LED pin - DOUT on the larger sphere. That is the last LED in the chain. Done? Power up the ESP32 board and upload the code from The Code section of this tutorial.

All LEDs are lit? Great! You are done. If not and chain is somewhere terminated, check for cold joints or shorts on that LED. Took me an hour to fix all the errors I've made. So don't be desperate! It's pretty hard built! And you made it so far!", project_id: led_shpere.id)
led_shpere_step_9 = ProjectStep.create!(heading: "Step 9: Inserting Microcontroller and Battery", body: "Take the ESP32 board. By-pass the on/off switch first. You won't be able to access it because it will be inside the sphere. Desolder it from the board and solder two small copper wires in place of it. Leave them hanging, you will solder them when the microcontroller is placed into the sphere.

The board has 3 or 4 screw holes in its corners. We won't use screws, but rather fill the holes with solder to make them later easy to attach to the sphere structure - these will be ground!

Take the smaller half-sphere and place the microcontroller into the center of the smaller ring on the bottom with USB and battery connector facing out of the sphere through the smallest ring. Solder the corner holes to the smallest ring - it's ground, remember? Pull the two on/off switch wires through the hole as well and solder the previously desoldered switch on them. The switch has a metal body, use it to solder it to the smallest ring as well. Make sure not to short the switch wires with the structures! Don't let the power switch overhand the sphere structure - it won't roll.

Take a piece of straight wire and solder it to the 3.3V pin on the ESP32 board. Then solder the other end to the last ring of the sphere - it's power, remember? I've also reinforced the inner structure by soldering some straight wires between ground rings and board GND pins. Make sure to leave a space for a battery on the back of the board! Take a copper wire and connect master DIN pin to IO21 pin of ESP32. Now you have the half-sphere setup. Connect the battery and test it.

Does it still work? Good! You can now attach the battery with some adhesive to the back of the ESP32 board and connect it through the hole.", project_id: led_shpere.id)
led_shpere_step_10 = ProjectStep.create!(heading: "Step 10: The Final Soldering!", body: "Test whether the screw holes on the ESP32 board are actually connected to the ground. I have to add a short wire between it and the nearest GND pin of the board - it will provide a ground connection for the second half-sphere.

Solder short wire to connect DOUT from the first half-sphere to the DIN of the second half-sphere, same thing you did in testing phase. Cut 2mm long wires and solder them to the topmost ring of the second half-sphere. I've used 8 of these wires. Both topmost rings are power, remember? So it's safe to solder those two topmost rings of each half-sphere together. Place the half-sphere on each other and solder them together. Make sure the space between the two half-spheres is nice and even. Finally, connect the ESP32 board screw-holes with the smallest ground ring wire by solder.

You got a sphere now! Touch it. Hold it. It feels really nice, doesn't it? Turn it on, does it work?", project_id: led_shpere.id)
led_shpere_step_11 = ProjectStep.create!(heading: "Step 11: The Code", body: "Download the Arduino IDE source code. I am using Neopixel Bus library to control the LED strip. It has a really nice interface and support for animations.

To be able to control the animations I've mapped the LEDs to table of 11 rows and 26 columns (array of arrays). This way I know exactly how the LEDs are placed on the sphere and can lit the exact LED I want.

I've prepared several animations so far:

vertical circle
horizontal circle
vertical rainbow
horizontal rainbow
rainbow
random pattern
Notice: I had to limit the brightness of the LEDs to approximately 20% of the full power. Because there is 194 of them and at full power they would consume 10 Amps. The small board cannot handle it. Don't worry if you use too much power the board starts to restart so it won't damage itself.", project_id: led_shpere.id)
led_shpere_step_12 = ProjectStep.create!(heading: "Step 12: That's All!", body: "I hope you like it! It was quite a challenging job to make and very rewarding in the end. The LED sphere is very beautiful even when not lit.", project_id: led_shpere.id)

nixie_clock_step_1 = ProjectStep.create!(heading: "Step 1: Get Your Components!", body: "Here you can find a parts list with example seller affiliate links:

Aliexpress:

4x IN-14 Nixie tube: https://s.click.aliexpress.com/e/_dYxadSB

4x K155ID1 Nixie tube driver: https://s.click.aliexpress.com/e/_dZ02DLv

1x LM7805 5V regulator: https://s.click.aliexpress.com/e/_dTT11Yx

1x Arduino Pro Mini: https://s.click.aliexpress.com/e/_dWjf2yn

1x DS1307 RTC: https://s.click.aliexpress.com/e/_d6iyPCF

SMD Capacitors 1206 10uF, 100nF: https://s.click.aliexpress.com/e/_dSt10Z1

Male+Female Header: https://s.click.aliexpress.com/e/_d8CsUsJ

4x 10kΩ Resistor: https://s.click.aliexpress.com/e/_dVrRxir

1x 170V DC Supply: https://s.click.aliexpress.com/e/_dTNNUVZ

1x DC Input Jack: https://s.click.aliexpress.com/e/_Bf7oDayn


Ebay:

4x IN-14 Nixie tube: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

4x K155ID1 Nixie tube driver: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

1x LM7805 5V regulator: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

1x Arduino Pro Mini: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

1x DS1307 RTC: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

SMD Capacitors 1206 10uF, 100nF: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

Male+Female Header: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

4x 10kΩ Resistor: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

1x 170V DC Supply: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

1x DC Input Jack: http://rover.ebay.com/rover/1/711-53200-19255-0/1?...

Amazon.de:

4x IN-14 Nixie tube: https://amzn.to/342RTrt

4x K155ID1 Nixie tube driver: -

1x LM7805 5V regulator: https://amzn.to/2qB7iBL

1x Arduino Pro Mini: https://amzn.to/2LBpBy3

1x DS1307 RTC: https://amzn.to/2YAUrMy

SMD Capacitors 1206 10uF, 100nF: https://amzn.to/356UnGy

Male+Female Header: https://amzn.to/38nmZ0v

4x 10kΩ Resistor: https://amzn.to/33ZDpbS

1x 170V DC Supply: https://amzn.to/36l52NY

1x DC Input Jack: https://amzn.to/2qAbVvL", project_id: nixie_clock.id)
nixie_clock_step_2 = ProjectStep.create!(heading: "Step 2: Order Your PCBs!", body: "Here you can download the Gerber files for the PCB that I created. Upload them through https://jlcpcb.com/quote#/ to order them.", project_id: nixie_clock.id)
nixie_clock_step_3 = ProjectStep.create!(heading: "Step 3: Solder the Components in Place!", body: "Here you can find the schematic of the circuit along with reference pictures of my own assembled PCB. Feel free to use them in order to finish your own PCB.", project_id: nixie_clock.id)
nixie_clock_step_4 = ProjectStep.create!(heading: "Step 4: Upload the Code!", body: "Here you can find the code for the clock. Upload it to the Arduino with the help of an FTDI breakout board.

Also you will need to download and include the following DS1307 library: https://github.com/MajicDesigns/MD_DS1307", project_id: nixie_clock.id)
nixie_clock_step_5 = ProjectStep.create!(heading: "Step 5: 3D Print the Enclosure and Assemble the Clock!", body: "Here you can find the files for 3D Printing the enclosure along with reference pictures of the assembly of my clock.", project_id: nixie_clock.id)
nixie_clock_step_6 = ProjectStep.create!(heading: "Step 6: Success!", body: "You did it! You just created your own retro nixie clock!", project_id: nixie_clock.id)

bracelet_step_1 = ProjectStep.create!(heading: "Step 1: Gather Your Supples", body: "Painters tape
3 different colors of embroidery floss cut 24-36 inches long
Scissors
A ruler
A table
*To know the length of embroidery floss you will need, measure the circumference of your wrist, add 6 inches, and then double it. So, if your wrist is 6 inches long, you will need a length of at least 24. This will give you a little extra room for tying. The way I like to do this is by taking a piece of string and wrap it around my wrist. I then mark the string where it meets the beginning and measure it using a ruler.", project_id: friendship_bracelet.id)
bracelet_step_2 = ProjectStep.create!(heading: "Step 2: Fold in Half", body: "Fold the floss in half.
*The colors do not have to be in a specific order. However, make sure the strings are not tangledor twisted, it will make it harder to separate them after you tie them together", project_id: friendship_bracelet.id)
bracelet_step_3 = ProjectStep.create!(heading: "Step 3: Gather and Tie", body: "Make a knot.
This is how we recommend doing int
Gather the folded strings at the unfolded ends while they are still folded.
About 2 inches down, pinch the strings together.
Cross the top two inches over the rest of the string, making a loop.
Take the top of the strand and bring it under the loop and thread it through.
Pull tight.", project_id: friendship_bracelet.id)
bracelet_step_4 = ProjectStep.create!(heading: "Step 4: Tape String to Table", body: "Above the knot tape to the table with the masking tape.
We recommend using two medium size pieces of tape and taping in an X shape.

*Be sure the string is secure", project_id: friendship_bracelet.id)
bracelet_step_5 = ProjectStep.create!(heading: "Step 5: Seperate the Strings", body: "Separate to your desirable pattern on each side
When lining them up, you will need 3 loops on each side
*I recommend lining up the colors to mirror each other on each side.", project_id: friendship_bracelet.id)
bracelet_step_6 = ProjectStep.create!(heading: "Step 6: Place on Fingers", body: "There should be one loop per finger on each hand. In the beginning, you will have 3 strings per hand.
Each loop should be on the inside of each finger
*The top loop goes on your index finger, the middle loop on your middle finger, and the bottom loop on your ring finger. This should be the same on both hands.", project_id: friendship_bracelet.id)
bracelet_step_7 = ProjectStep.create!(heading: "Step 7: Weave Through String on Left Hand", body: "Move your pinky finger from your right hand to the loop on your ring finger on your left hand
Go under the right side of the loop and place your pinky on top of the left side of the loop, repeat with the next 2 loops on your left hand
With your pinky take to loop on your pointer finger and bring it through the other loops on your left hand, bringing it to the other side and keeping it on your pinky finger on your right hand.
*You will now have 2 loops on your left hand and 4 loops on your right hand.", project_id: friendship_bracelet.id)
bracelet_step_8 = ProjectStep.create!(heading: "Step 8: Weave Through String on Right Hand", body: "Take your pinky finger from your left hand and bring it to the loop on your pinky on your right hand.
Go under the left side of the loop and place your pinky on top of the right side of the loop, repeat with the next 3 loops on your right hand.
With your pinky take the loop on your pointer finger and bring it through the other loops on your right hand, bringing it to the other side and keeping it on your pinky finger on your left hand.
*You will now have 3 loops on your left hand and three on your right

Be sure to keep the strings tight. it will make it easier to weave.", project_id: friendship_bracelet.id)
bracelet_step_9 = ProjectStep.create!(heading: "Step 9: Bring Loops Up One Finger", body: "Bring the loop that is on your middle finger to your ring finger.
Bring the loop on your ring finger to your middle finger.
Bring the loop on your pinky to your ring finger.
*This should be done on both sides

Be sure to keep the strings tight, it will make it easier to weave.", project_id: friendship_bracelet.id)
bracelet_step_10 = ProjectStep.create!(heading: "Step 10: Repeat Until You Reach Desired Length", body: "Repeat steps 7 through 9 until you have reached the desired length for the bracelet.
Once desired length is reached, move onto step 11
*Remember to leave about two inches to be able to tie the bracelet

Be sure to keep the strings tight, it will make it easier to weave.", project_id: friendship_bracelet.id)
bracelet_step_11 = ProjectStep.create!(heading: "Step 11: Tie Sections Together", body: "Make a knot.

This is how we recommend doing it.

Take the loops off your fingers and separate the two sides

Cross sections over

Bring the left set of strings over the right side of the loop

Bring the left side through the loop

Pull tight", project_id: friendship_bracelet.id)
bracelet_step_12 = ProjectStep.create!(heading: "Step 12: Give or Tie", body: "Tie the bracelet on yourself or give to one of your friends", project_id: friendship_bracelet.id)

analog_synth_step_1 = ProjectStep.create!(heading: "Step 1: Tools Needed", body: "You will need a soldering iron and some prototyping boards, or you can assemble it on the breadboard.

If you are a little more advanced, I will provide files for etching your own PCB.", project_id: analog_synth.id)
analog_synth_step_2 = ProjectStep.create!(heading: "Step 2: Starting With an Oscillator", body: "The heart of the synthesizer is an Astable Multivibrator circuit made with an operational amplifier. On the internet you will find very long and detailed derivations of its operation, but I will try to explain its working in a more simple way.

The oscillator consists of a few resistors and one capacitor.

The op-amp comparator circuit is configured as a Schmitt trigger that uses positive feedback provided by resistors R1 and R2 to generate hysteresis. This resistive network is connected between the amplifiers output and non-inverting + input. When Vo--output voltage--is saturated at the positive supply rail, a positive voltage is applied to the op-amps non-inverting input. Likewise, when Vo is saturated to the negative supply rail, a negative voltage is applied to the op-amps non-inverting input.

This voltage slowly charges and discharges the capacitor at the - input through the Rf resistor. Lets say we start with op-amps output at positive saturation voltage +Vsat. The capacitor is being charged and its voltage Vc is slowly rising. In the mean time R1 and R2 form a voltage divider with its voltage output Vdiv at a stable value somewhere between output saturation voltage +Vsat and 0V. When the capacitor voltage exceeds the voltage of the R1 and R2 voltage divider, the op-amp inverts its state to negative saturation voltage -Vsat. Then the capacitor is being discharged through the Rf resistor until its voltage Vc is lower than the R1 and R2 dividers voltage Vdiv. Then it again flips its state to the initial state +Vsat. And so on and on.

This in fact produces square-wave voltage output voltage of the oscillator and if it is of the right frequency, it produces an audible tone.", project_id: analog_synth.id)
analog_synth_step_3 = ProjectStep.create!(heading: "Step 3: Calculating the Frequencies", body: "The oscillator frequency can be calculated via the equation in the picture above.

You can tune this synth whatever you like.

I wanted to tune it in C major scale - all the white keys on the piano. This way, there are no wrong tones and it is easy to play for kids.

So I searched online for the list of frequencies for the specific tones and I decided to tune the thing from C4 to C5 note.

I made the calculations for the needed resistor. I did it fancy and calculated it with Matlab Octave.

For the R1 and R2 resistor divider I chose 22k ohm resistors, for the capacitor I chose 100nF cap.

Here is the code if you are too lazy to do it by hand with a calculator.
Or you can just use the flipped equation for the manual resistor calculation.

R1=220e3;
R2=220e3;

lambda=R1/ R1+R2;

C=100e-9;

f=[261.63 293.66 329.63 349.23 392 440 493.88 523.25]; %list of frequencies

R=1./(f.*2.*C.*log((1+lambda)/(1-lambda)))

Here are the results:

C4 = 17395 ohm

D4 = 15498 ohm

E4 =13806 ohm

F4 = 13032 ohm

G4 = 11610 ohm

A4 = 10343 ohm

B4 = 9215 ohm

C5 = 8697 ohm

Of course I needed to round the values to the nearest resistor values. I used standard E12 resistor series which is the most often found in hobby parts box. Because E12 resistor series is pretty coarse, I used 2 resistors in series for each value in order to get closer to the desired resistance and the synth will be more in tune this way.

C4 = 2.2k + 15k ohm
D4 = 15k + 470 ohm

E4 =8.2k + 5.6k ohm

F4 = 12k + 1k ohm

G4 = 4.7k + 6.8k ohm

A4 = 10k + 330 ohm

B4 = 8.2k + 1k ohm

C5 = 8.2k + 470 ohm", project_id: analog_synth.id)
analog_synth_step_4 = ProjectStep.create!(heading: "Step 4: The Finished Oscillator Schematic", body: "Here is the schematic for oscillator part.

With the individual keys, you select the desired resistance and the desired tone is produced.

This schematic explains why you get high pitched sounds when pressing multiple keys at once. By pressing multiple keys at once, you connect more branches of the resistors in parallel and effectively connecting them in parallel, reducing the total resistance. Lower resistance produces higher pitched tone.", project_id: analog_synth.id)
analog_synth_step_5 = ProjectStep.create!(heading: "Step 5: The Speaker Amplifier", body: "The speaker amplifier could be done even simpler, but I decided to make a true AB class amplifier stage.

The stage consists of PNP and NPN transistors, coupling capacitors and two bias resistors and diodes.

Very basic but it works well.

In front of the amplifier stage I put a 100k logarithmic audio potentiometer for adjusting the volume.

Because the potentiometer on its own in the circuit would de-tune the oscillator added resistance, I slapped an op-amp buffer in front of it which introduces high input resistance for the circuit in front of it and low impedance for the circuits after it.

Basically a buffer is an amplifier with a gain of 1.

The opamp I am using is TL072 which has two amplifier circuits in it, so this is all we need.", project_id: analog_synth.id)
analog_synth_step_6 = ProjectStep.create!(heading: "Step 6: Auxilliary Stuff", body: "On the left side of the image there are the input connector headers, where you connect the power supply.

They are followed by two diodes which protect the circuit for accidental connection of the wrong polarity power supply.

I also added two LEDs for indicating the presence of each power line.", project_id: analog_synth.id)
analog_synth_step_7 = ProjectStep.create!(heading: "Step 7: Full Schematic", body: "See image", project_id: analog_synth.id)
analog_synth_step_8 = ProjectStep.create!(heading: "Step 8: The Power Supply", body: "The circuit requires symmetrical power supply.

You need +12V and -12V 9V would also work.

I used some old power supply from a broken inkjet printer, since it had +12V and -12V rails

But you can also make a symmetrical +-12V power supply from a single 24V one using the schematic above.

But just don't forget to mount a heatsink to the 7812 regulator.

Or you can connect in series two isolated 12V power supplies.", project_id: analog_synth.id)
analog_synth_step_9 = ProjectStep.create!(heading: "Step 9: The PCB", body: "If you like to etch your own PCBs you can find the file for printing here. I used 10x10mm pushbuttons for the keys.

Many people wanted to know where to find buttons with a nice big cap.
Here I managed to find similar pushbuttons you can use for the keyboard:

https://www.banggood.com/custlink/GvDmqJEpth

They should also fit on a breadboard!

This is affiliate link - you pay the same price as without the link, but I get a small commission so I can buy more components for projects to come

For the capacitor selector, I soldered the header so I can quickly change the capacitors.

On the other side, the circuit is simple enough so that you can assemble it on the breadboard or a prototyping solder board. It would be even easier to tinker with and swapping the components for different effects.

For the speaker I recycled an old internal PC speaker, I made a simple 3D printed enclosure for it.", project_id: analog_synth.id)
analog_synth_step_10 = ProjectStep.create!(heading: "Step 10: Done!", body: "Now your synth is done and you should play some awesome tunes with it!

Hope you liked the instructable. Feel free to check my other instructables and youtube videos!", project_id: analog_synth.id)

bike_chain_step_1 = ProjectStep.create!(heading: "Step 1: Installing Bike Into Maintenance Stand", body: "Install bike into maintenance stand. Caution should be used when clamping the bike to avoid damage to carbon fiber or suspension style seat posts.", project_id: bike_chain.id)
bike_chain_step_2 = ProjectStep.create!(heading: "Step 2: Locate the Chain's Quick Link", body: "The quick link is a visually different link of the chain with a slot. If your chain does not have a quick link proceed to step 3, otherwise proceed to step 4. Use the chain pliers to squeeze the link together and with a slight twist the chain will come apart. Remove the chain.", project_id: bike_chain.id)
bike_chain_step_3 = ProjectStep.create!(heading: "Step 3: Remove a Pin", body: "Using the chain breaker tool select a pin to remove from the chain. If the chain has been repaired using this method before it is recommended that a pin at least four links away be removed. Insert the chain breaker between the links aligning the pin of the tool with the pin of the chain. Ensure the chain is properly seated in the tool prior to actuating the screw. Turn the screw clockwise until the chain pin pushes out of the chain. You will feel some initial resistance and hear a pop when the chain pin breaks free at the beginning and end of removal, this is normal. Remove the tool from the chain and the chain from the bike.", project_id: bike_chain.id)
bike_chain_step_4 = ProjectStep.create!(heading: "Step 4: Cleaning the Chain", body: "Place the chain in the container and fill with enough solvent to cover the chain. Put on the lid and shake vigorously for a minute or so. Open the container and discard the used solvent. Replace with fresh solvent and repeat at least once more. It is recommended to repeat this process until the solvents contamination is reduced to only slight discoloration. You can filter used solvent through a coffee filter and use again for initial chain cleaning in the future.", project_id: bike_chain.id)
bike_chain_step_5 = ProjectStep.create!(heading: "Step 5: Inspection", body: "Once satisfied that the chain is sufficiently cleaned, remove from the solvent and wipe dry with a clean rag. You may blow the chain dry with an air nozzle if available or leave to dry for ten minutes. It is also recommended that time be taken here to clean the derailleur, cassette and front chain rings as well as inspect for any damage. Using the chain inspection tool measure the wear of the chain following the tool manufacturer’s instructions. If the chain is damaged or worn replace the chain with new. If installing a new chain begin by degreasing the chain as above and follow the steps below.", project_id: bike_chain.id)
bike_chain_step_6 = ProjectStep.create!(heading: "Step 6: Routing the Chain", body: "Once clean and inspected it is time to reinstall the chain. If installing a new chain, compare the lengths and shorten the new chain if necessary by removing links as described above. Begin by routing the chain over the front sprocket and allowing the chain end to hang. Take the other end of the chain and pass it through the chain stay and seat stay and over the rear cassette. Route the chain around the back of the cassette and guide the chain around the front side of the upper sprocket (jockey wheel) and behind the tab on the derailleur guide plate. Pass the chain around the rear of the lower sprocket (idler wheel) and pass through derailleur frame. If your bike does not have a rear derailleur simply pass the chain around the front and rear chain rings.", project_id: bike_chain.id)
bike_chain_step_7 = ProjectStep.create!(heading: "Step 7: Securing the Chain", body: "Put one half of the chain quick link into each end of the chain and bring the chain together. Secure the quick link by inserting each of the pins into the corresponding holes and pulling each end of the chain in opposite directions until a click is felt or heard. The chain is properly seated when the quick link pins are at the rear of the slot and no gap is seen.

If your bike does not utilize a quick link proceed to step install a new pin as follows. Begin by removing one additional link from the portion of the chain where the original pin was removed. If this process has been performed multiple times on the same chain it may be necessary to install a short piece of chain to regain proper length. Bring the two ends of the chain together and insert the new pin until it stops. Install the chain tool, aligning the pin of the tool with the pin of the chain. Turn the tool’s screw clockwise until the pin is just flush with the link on the inside of the chain. Remove the tool and using standard pliers, grasp the pin and break off the protruding portion of the pin. The pin should break easily at the scribed line.", project_id: bike_chain.id)
bike_chain_step_8 = ProjectStep.create!(heading: "Step 8: Lubricating the Chain", body: "To properly lubricate the chain begin by selecting your preferred lubricant. Manufactures create different lubricants for different conditions, consult your local bike shop to determine what would suit your riding style best. While turning the cranks backwards apply a generous amount of lubricant to the chain along its entire length. While not necessary, you may choose to let the lubricant sit for a minute or two. Using an old rag grasp the chain from the bottom and turn the cranks backwards. Using light pressure let the chain pass through the rag, removing excessive lubricant. The end result should only be a thin layer. Use caution here to not get rag or fingers caught between the chain and sprockets.", project_id: bike_chain.id)
bike_chain_step_9 = ProjectStep.create!(heading: "Step 9: Checking Your Work", body: "Rotate the cranks forward and move the chain through the entire range of gears ensuring proper shifting. Once satisfied inspect the chain one last time for proper quick link or pin installation. The final product should be a clean chain with no dirt, grease or grime. Only a thin film of oil.

This is also a good time to inspect the remainder of the bike. Remove bike from the maintenance stand and go ride!", project_id: bike_chain.id)

tie_knots_step_1 = ProjectStep.create!(heading: "Step 1: Make the Box", body: "I’ll break down this into two sections as that’s how the box is.
Using the scrap wood I had I made two oblonged framed boxes. (Dimensions see image) I assembled the box halves with wood glue and wood screws. I painted the overall box inside and out brown before working on to the insides.", project_id: tie_knots.id)
tie_knots_step_2 = ProjectStep.create!(heading: "Step 2: Left Section", body: "I cut a section of 1/8in thick gypsum board to fit perfectly in the back of the box. I glue it in to place. To help finish it I hot glued a piece of 1/4in thick rope all away around the edge to hide the edges. I divided the back into four areas, each area will be for a specific knot.
Area 1: Clove hitch (One 18in long 1/4in rope) Area 2: Timber hitch (One 18in long 1/4in rope) Area 3: Two Half hitch (One 18in long 1/4in rope) Area 4: Taught Line (One 18in long 1/4in rope)

In each area I put a 8.75in length section of actual scrap tree wood (each about 1.5in in diameter). I cut each limb to fit snug from top to bottom. Before securing the limbs in place I tied and glued an example of each knot for each section towards the top. (Note I made the mistake on the first three knots varnishing them it wasn’t needed and turned the ropes yellow)

Then I glued & nailed to the back side of the limb at the bottom the actual tying rope that can be used to practice with. I wedge the limbs into the appropriate area using a small amount of wood glue. To help keep them in place I use a 1.5in screw from the top and bottom outside of the box.", project_id: tie_knots.id)
tie_knots_step_3 = ProjectStep.create!(heading: "Step 3: Right Section", body: "This side of box I divided into four areas, but only need three for the other three Scout knots. In the last area I put my Knot Sure™ tying logo from my custom Knot Sure™ tying program I created (complete with custom patch).
Area 5: Square Knot (Two 18in ropes) Area 6: Sheet Bend (Two 18in ropes) Area 7: Bowline (One 18in long rope) Area 8: Knot Sure™ program art

I put a half inch furring strip at the top and bottom on the long sides in the back. Like the left section I cut a same size section of gypsum board to fit over the back with the furring strips in place. This leaves a .5in gap behind it making it false back inside to where I could drill holes for the tying ropes for each section.

Before putting false back into position I drilled holes just big enough (1/4in) to feed the sections of rope through. I did a stopper knot at one end of each piece of rope before feeding it through. To keep them secured for continual use I tied an additional knot as tight as I could up against the face of the gypsum board.

With ropes pulled through and secured, I glued the false back into place. And like the left section finished it with a rope boarder hot glued in place. Each knot tying rope portion is about 18in long. At the top in the appropriate area I glued a sample of each knot in place.", project_id: tie_knots.id)
tie_knots_step_4 = ProjectStep.create!(heading: "Step 4: Join Sections", body: "I used a brass hinges at the short end. It makes for and awkward opening but it helps with the over display and training usage. On the opposite end of the hinges I placed two toggle latch clasps with hasps to hold it together. Plus an additional two spaced strategically across the top of the box.

As cumbersome as the long box is I needed a way to carry it. To facilitate this I braided two handles for each section. I took this also as opportunity to tie two different style braided handles a Square Crown Sennit and a Round Crown Sennit. I drilled two holes in each section spaced apart. Fed each handles loose ropes through and glued and brad stapled to secure in place. This proved more than adequate to lift with and support the box when picking it up.", project_id: tie_knots.id)
tie_knots_step_5 = ProjectStep.create!(heading: "Step 5: The Fun Part - Decorate the Box", body: "Now to just look at the outside of the box (other than the handles) you’d have no idea what its all about. So putting my knot knowledge to the test I proceed to tie any and every kind of knot, hitch and or braid samples I could find. I tied each using small 1/8” gauge rope. After tying each knot I nailed into position on the exterior of the box with brass brads (tacks). Using a gold sharpie I identify each knot and or braid style. All the loose knots on the right section were easy to attach.

On the left section to be able to display the hitch style knots I had to hook a length of 1/4in dowel rod to the box. I first tied all the hitches I wanted to display and fit them over the rod. I then secured the rod with 3 brass eye hooks bending the ends closed around the rod for a more secure fit. After this I positioned the hitches along the rod and nailed each into place. Most of the knots, as you can see, I used white rope. But for some of the seizings and braids along the bottom I used a hemp based twine like rope. The difference in colors helps highlight the seizure knots and braids.", project_id: tie_knots.id)
tie_knots_step_6 = ProjectStep.create!(heading: "Step 6: Using the Trainer", body: "The sheer number of knots and size of this box impresses most of trainees when they first see it. Its been a great tool for both young Scouts and adult Scouters to train the basic 7 Scout Knots. As I said at the beginning, it is still being used today. I hope to use it very soon with my Tiger Den.

One thing about training knots the best way to learn a knot is to teach someone else after you think you’ve learned it. This cements it to your memory. Another point about knots almost all knots were created for a specific use, teaching the purpose of a knot also helps reinforce memory of it.

Now if you think tying some knots are difficult? Try drawing a knot. An if that’s not a challenge for you try doing it on a computer. It’s a whole new challenge.

Its important to remember explain and demonstrate how to tie the knot. Then using the Knot trainer let them practice. Seeing the finished knot and having a visual direction can be beneficial as well. Not everyone learns the same way. Some people are visual others audible and by giving both directions will help various individuals learn and complete the knots.

Another recommendation is to give each trainee their own knot tying rope. This is something they can take with them to practice with and eventually teach others how to tie knots. The last picture is my actual knot tying rope that I've had for years.

I'd avoid waxy or propolyene twine. Hemp like twine can work but is rough on young hands. I recommend a Clothesline woven style rope. Usually about 1/4in in diameter and about 4' in length. This length comes in quited handy when out in the wild for all kinds of applications. When making these be sure to fuse the ends with a lighter. (Be careful as synthetic ropes will be super hot and can cause severe burns).

You could do a seizing style of wrap at the ends but this is time consuming and although its pretty and impressive looking its a bit overkill for beginners. Who will more than likely lose their knot rope.

I hope seeing my training box inspires you to find your own way to teach Knot tying. I truly love knot tying and love helping others learn knots. Who knows it could save a life someday. At the very least knowing how to tie the proper knot can make your life easier.

Read on if interested in my Knot Sure™ program.", project_id: tie_knots.id)
tie_knots_step_7 = ProjectStep.create!(heading: "Step 7: Knot Sure™ Program", body: "Earlier I mentioned my Knot Sure™ program. This program I designed to encourage my units scouts to learn the knots and receive recognition in the form of a patch. This was originally posted on our units website over 10 years ago. The website is no longer active but the PDF is uploaded here.

Other units across the country have requested to use the program. The reason I designed the program is because I noticed that even though the knots are required for rank advancement some of the scouts retention, especially the older ones, was lacking. Mainly because they weren't actively having to use these knots on camp outs.

I feel this was happening mostly because of the advent Velcro and other improvements in camping gear. Heck most kids don’t even know how to tie their shoes nowadays with Velcro straps. So I wanted to aid and teach our scouts in that learning these 7 basic scout knots they’ll use them the rest of their life. If anyone is interested in the program feel free to reach out to me.

I've updated the Instructions for 2020. And removed the patch purchase option. If I get enough requests maybe I'll reorder.

Good Luck all you Knot Tiers.", project_id: tie_knots.id)

visualizer_step_1 = ProjectStep.create!(heading: "Step 1: The Bare Necessities", body: "Materials:

Analog TV (Find one at a fleamarket/yard sale or buy one on eBay)
3.5mm Male to Male Stereo Cable (Make one yourself from two pairs of old headphones, or buy one at Walmart, Amazon, etc.)
Music Player with Headphone Jack
Wire (nothing specific, a few scrap pieces will do)
Solder
Solder Flux
Electrical Tape
Tools:

Screwdrivers (for disassembly)
Soldering Iron
Dremel or Hacksaw
Multimeter (not strictly necessary, but quite helpful) (Get one for free at Harbor Freight with a coupon)
Note: For this project, I opted to use a portable, black-and-white television for its low form factor and simplicity. I believe the same results are also achievable with larger, color TVs, however there may be minor differences. For example, I believe that you may have to replace the horizontal deflection coil with a dummy coil in larger TVs for the circuitry to function properly. Since I have not tried this myself, though, I cannot confirm its accuracy.", project_id: visualizer.id)

visualizer_step_2 = ProjectStep.create!(heading: "Step 2: Disassembly", body: "Before you begin, it is important that you realize the risks involved with hacking an analog television. The main danger here is the flyback transformer. Located in the image above, this device can store a nasty charge that can seriously hurt you if you aren't careful. Be especially wary if you are using a larger TV, as the transformer will probably store even more energy. Because of this, it is a good idea to wear insulating gloves when handling the circuit board and other connections inside the TV.

Keeping this in mind, open the outer casing of the TV and locate the deflection coils. They will be the coils of wire surrounding the back of the cathode-ray tube (CRT) display. The purpose of these coils is to direct the stream of electrons (fired from the electron gun at the back) to the appropriate positions on the screen. As you may have guessed, there are two deflection coils, one vertical and one horizontal. If you would like to know more about how the system works, I encourage you to go here.

Next to the deflection coils, there will be a cluster of four connections. Two of these connections correspond to the the vertical deflection coil, and the other two correspond to the horizontal coil. To find out which are which, trace the wires back to the board. In my case, there were abbreviations on the board indicating the role of each wire. From this, I surmised that the blue and red wires went to the horizontal coil, and the yellow and gray wires went to the vertical coil. If this information is not on your board, don't worry. You will be able to differentiate the wires in the next step through experimentation.", project_id: visualizer.id)
visualizer_step_3 = ProjectStep.create!(heading: "Step 3: Testing the Display", body: "Although this step is not strictly necessary, it should provide some insight into how the audio visualizer will work. First, take a picture of the coil connections mentioned earlier, so you don't forget where the wires go. Next, desolder the four coil connections. Wrap electrical tape around the loose wires, keep your hands away from the inside, and turn on the TV. You should see a single dot in the center of the screen. This is the un-deflected electron beam hitting the inside of the display. Next, unplug the TV and reconnect the horizontal deflection coil (you can use jumper leads instead of soldering). If you don't know which wires are which, just hook two of them up to their original positions and keep experimenting. Turn on the TV, and you will see a horizontal line across the screen. Unplug it and do the same thing with the vertical deflection coil. As you might expect, this will produce a vertical line along the screen.

If you have an amplifier, leave the vertical coil attached and hook the output of your amp up to the horizontal coil. When music is played, the waveform appears on the screen just as desired. This is where most tutorials on the topic stop. Unfortunately, many people (including me) don't have an amplifier that they can use for this project. I originally made one by hacking an old answering machine, but the sound quality was poor and there was no way I could fit everything into the small TV case. I mulled over the problem for a while and then it hit me: The TV obviously produces sound, so it must already have an audio amplifier in it! All I needed to do was repurpose it. This is precisely what I will show you how to do in the next steps.

Before moving on, I should also mention that it is possible to display waves horizontally on the screen. Unfortunately, it is not as simple as sending a signal to the other coil. Because the horizontal deflection coil operates at a much higher frequency than the vertical one, doing this just produces a moving band of static. The workaround is to move the vertical coil wires to the horizontal coil and send the audio signal to the vertical coil instead. Because the display is not square, though, the resulting horizontal line does not fill the whole screen (see last picture above). You might be able to mitigate this problem by adjusting the vertical-hold, but I decided I liked the vertical waves better in the end.", project_id: visualizer.id)
visualizer_step_4 = ProjectStep.create!(heading: "Step 4: Modifications", body: "First, locate the audio output jack on your TV. From my experience, most analog TV's have one, but if yours doesn't, you will probably have to buy and install one yourself. Look here if you do. As the name implies, this jack is meant to output audio, usually to a pair of earphones. For this project, we want it to input a signal to the amplifier. To do this, you first need to disconnect the jack from the circuit. Use a hacksaw or dremel tool to cut any traces going to the jack. Make sure that they are completely disconnected. You really don't want the TV trying to send signals into your iPod.

The audio jack has three connection points. The one at the front of the jack (nearest the outside of the TV) is for ground. The one at the back of the jack is for audio signal. The remaining connection is used to turn off the external sound when the audio jack is in use. Cutting the traces fools the TV into thinking that the jack is in use. To resolve this issue, solder the traces that went to the second and third connector together. The third picture above should make this more clear.

Now, locate the volume control on your TV. This will probably be a dial that turns a potentiometer on the circuit board. If so, solder a wire from the signal leg of the audio jack to the center leg of the potentiometer. Solder another wire to the ground leg of the audio jack. Plug your music player into the jack and start playing a song. Touch the ground wire to each of the remaining potentiometer legs. When you hear music playing through the TV speaker(s) you know you have found the right one. Unplug everything and solder the end of the wire in place. You are now done modifying the circuit board.

The only thing left to do is connect the TV speaker to the horizontal deflection coil. Solder two wires in place and close everything up. The conversion is complete!", project_id: visualizer.id)
visualizer_step_5 = ProjectStep.create!(heading: "Step 5: Having Fun", body: "Now its time to test it! Plug in your music player and try out your favorite songs. You can also use this online tone generator to play around with frequency, amplitude and various waveforms. I used it to create standing waves at approximately 320 Hz. Thanks for reading and let me know if you come up with any other cool ideas for this project!

P.S. If you enjoyed this instructable, I would appreciate your vote in the Tech Contest and the Formlabs Contest. Winning a 3-D printer would totally make my year, and it would allow me to create even cooler projects to share with all of you in the future!", project_id: visualizer.id)

extinguisher_step_1 = ProjectStep.create!(heading: "Step 1: Materials and Tools", body: "Materials:

1. Fire Extinguisher

2. 22-ohm resistors (6 of them)

3. Wires

4. Thin plywood

5. 1in by 1in rectangular wooden pole

6. Electrical tape

7. Heat sinks (2)

8. CPU fan

9. Peltier device

10. Thermal paste

(for items 7-10, you can either get separately or all together as a Peltier cooling unit)

11. 9-volt power source

12. Insulation

13. Thin fabric

14. Hinges (1 inch tall)

15. Clasp (1-2 inches)

Tools:

1. Dremel (metal cutting bit)

2. Hot glue gun

3. Scroll saw

4. Drill

5. Rivet popper and rivets", project_id: extinguisher.id)
extinguisher_step_2 = ProjectStep.create!(heading: "Step 2: Empty the Extinguisher", body: "First, you have to clean out the extinguisher before your work with it. Simply unscrew the cap, and pour any power out into a plastic bag. Tie the bag shut and throw it away, then rinse out the extinguisher with water. Don't worry about trying to polish the inside, as it'll be covered with the insulation.", project_id: extinguisher.id)
extinguisher_step_3 = ProjectStep.create!(heading: "Step 3: Cutting the Bottom", body: "This part is going to take the longest. Clamp the extinguisher down so the bottom is facing up. There will be a bit of a lip on the extinguisher, before the flat part of the bottom. Get the Dremel and cut through the extinguisher where the lip meats the flat part. This will take a while because the metal at this part is thick, and the metal cutting disk has trouble with corners, which is the entire cut. Once you get through most of the metal, you can take a hammer and knock the circle out if you want to speed it up.", project_id: extinguisher.id)
extinguisher_step_4 = ProjectStep.create!(heading: "Step 4: Cut Out the Door", body: "Next, You will need to cut out the door. This will be a lot faster than part 3. Cut a rectangle, from an inch to the bottom to where the top starts to curve. Make the side cut 1/3 of the extinguisher (or a 160 degree cut if you think of it as a unit circle). This time, make sure to not use a hammer, as you don't want your door to be all dented up.", project_id: extinguisher.id)
extinguisher_step_5 = ProjectStep.create!(heading: "Step 5: Attach Hinges and Clasps", body: "For the hinges and clasp to fit the extinguisher, you have to get a pair of pliers and bend them to fit the curvature of the extinguisher. Then find where you want the hinges to sit on one side of the door, and mark the first two holes. Make a piolet hole with a drill, and work your way up using one size larger bits until the hole in the extinguisher is the same size as the hole in the hinge. Then pop a rivet in the hole and repeat until the hinge is securely fastened. Do this again, but on the other side of the door, with the clasp. (The clasp will act both as a handle to open it and a clasp to keep the door shut).", project_id: extinguisher.id)
extinguisher_step_6 = ProjectStep.create!(heading: "Step 6: Insulate", body: "WARNING: Most insulation has fiberglass in it. Please be careful and wear proper eyewear, breathing mask, and gloves.

Other than worrying about safety measures, installing the insulation wasn't difficult. Around the door I used some adhesive foam, to make sure the door had a proper seal. Then I measured the spots that needed insulating, cut the insulation, and glued it in. Any glue (besides glue sticks) should work for this. I personally used some Elmer's spray on glue.", project_id: extinguisher.id)
extinguisher_step_7 = ProjectStep.create!(heading: "Step 7: Covering the Insulation", body: "As I mentioned in the last step, insulation is not something you want to be touching. I got some scrap cloth and glued it over the insulation. I found that hot glue worked best for this. Once all the insulation is completely covered, it's safe to remove your gloves, glasses, and mask.", project_id: extinguisher.id)
extinguisher_step_8 = ProjectStep.create!(heading: "Step 8: Cooling Components", body: "Assemble your cooling unit. If you have a pre-assembled unit, the move on to step 9, otherwise you will need to put it together yourself. Take the Peltier unit, and use some thermal paste to attach the heatsinks to either end. Then put the fan on the hot side heatsink (If you're not sure, run 6 volts through the Peltier device and see which side heats up). Try to put the cold side heat sink into the bottom of the extinguisher through the hole you cut in step 2. If it doesn't fit, you will need to take the Dremel and cut it down.", project_id: extinguisher.id)
extinguisher_step_9 = ProjectStep.create!(heading: "Step 9: Circuitry", body: "This step will vary depending on how much voltage your device needs. For me, the fan needed a max 12 volts, and the Peltier device a max of 6 volts. I put six 22 ohm in parallel, then had them all connect back to the Peltier device. Then I put the ohm-Peltier node in parallel with the fan and connected it all back to the 9-volt power source. If your fan/Peltier device needs a different voltage to run, don't follow this example, because there's a change you may put too many volts into your stuff and break them. If you're unsure about how to set up/design a proper circuit, there's plenty of guides online. And remember, be safe when working with electricity. Don't turn anything on until you finished working, and cover any exposed wire with electrical tape.", project_id: extinguisher.id)
extinguisher_step_10 = ProjectStep.create!(heading: "Step 10: Touch Ups", body: "Once you have your cooling unit powered, you can insert it through the hole in the bottom of the extinguisher. It'll take a while for it to cool down, but it will. Now you have a chance for some customization. The cooling unit and the wires were unsightly to me, so I decided to make a small box out of a thin sheet of birch plywood, and a small wooden rectangular pole for support. I cut the wood with a scroll saw, and hot glued it together. You can hide these components any way you want, or even not at all if you like them. Just remember that whatever you decide to do, make sure to leave a hole near the bottom so the fan can blow the hot air out of the cooling unit", project_id: extinguisher.id)

gas_turbine_step_1 = ProjectStep.create!(heading: "Step 1: Turbocharger", body: "Step one involves sourcing a turbocharger. Try to select one with an inlet to outlet diameter ratio of 1:1.5, so the outlet should ideally be 50% bigger in diameter than the inlet.

A turbo from an older petrol car (80's or 90's) is better. All the dimensions used in every turbo are available from the likes of turbomaster.net and a couple of other websites. The closer to the 1:1.5 ratio you can get the easier it will be to get the engine started at the end.

If at all possible, try get a turbo that is large diameter with only an oil gallery to cool the bearings. If you do get one with a coolant gallery also, just blank it off it can run with only oil through the oil gallery as coolant. In preparation the wastegate (bypass) flap should be welded shut. If the turbo you select has an external wastegate, simple remove it. Either way make sure there is no bypassing of the exhaust gas from the combustion chamber.

Pictured above is:

A k14 turbocharger inlet.

The turbine side of the k14 with the waste gate blanked off.", project_id: gas_turbine.id)
gas_turbine_step_2 = ProjectStep.create!(heading: "Step 2: Fabricate a Combustion Chamber", body: "The combustion chamber serves to mix fuel into the pressurized air coming from the compressor, ignite it, and feed the hot gasses into the turbine section of the turbo. In other words, cold air goes in, mixes with fuel, ignites, hot air goes out. Simply put the combustion chamber feeds fire to the turbo. It is easiest to position the combustion chamber onto the exhaust flange of the turbo. The combustion chamber is pressurized during combustion up to 2.5 bar of pressure, so it must be air tight and strong enough to withstand such pressures.

Fuel line is copper brake pipe with no valves or regulators hooked up to a propane tank. Ignition is how you please, I used the ignition off a kerosene burner with spark plug leads jammed where the metal prongs usually go. An automotive spark plug will do in this arrangement and works quite well.

Look up the formulae, do the maths. Or just use 1.5mm thick 316L stainless steel pipe, 3in wide like I did, with a flame tube of 0.9mm thick 308 stainless steel 90mm diameter inside.

Which brings us to the flame tube. Online calculators (like jetspecs) will tell you combustion chamber volume, diameters and flame tube hole patterns. You will need to do your research here as a well designed flame tube will make the gas turbine start up very easy and run at a healthy temperature, and a poorly designed flame tube will potentially lead to catastrophic failure of the engine (boom)

Pictured above is:

My combustion chamber from the underside

My combustion chamber from the top showing lpg connection and sparkplug

My combustion chamber disassembled with internal flame tube and copper head gasket

Finally my combustion chamber assembled and mounted on the turbocharger.", project_id: gas_turbine.id)
gas_turbine_step_3 = ProjectStep.create!(heading: "Step 3: Oil System", body: "I used a power steering pump from a mk2 golf as an oil pump, with the oil filter and bracket off a mk2 golf engine to smooth out the pulses from the pump (important). To drive this pump i used a vee belt and pulley setup attached to a treadmill motor and controller. This is so i can increase motor speed if needs be and increase oil pressure/flow. Oil should be delivered via a bypass valve so you can tune the oil pressure on the fly.

Failure to adjust the oil pressure to the running conditions of the engine could lead to catastrophic failure (boom)

Try to use parts of the original oil feed for the turbo, 10mm copper pipe and plumbing fittings. Don't skimp here - buy brass and lead solder as many of the connections as possible. I used a gas shutoff (ball) valve as the bypass valve. Oil pressure should be a constant 2 Bar or 30 psi while the gas turbine is running.

Pictured above is:

My oil pump setup with the power steering pump (left) being driven off a pulley from my treadmill motor (right)

My oil filter setup", project_id: gas_turbine.id)
gas_turbine_step_4 = ProjectStep.create!(heading: "Step 4: Fuelling", body: "As previously discussed the fuel line should consist of an unrestricted line from tank to combustion chamber. Nearly every gas pipe/ fitting nowadays comes with an inbuilt regulator for safety, so avoid this at all costs as the gas turbine will not run unless the fuel path is completely unrestricted.

The valve on the top of the propane bottle will be used as the throttle of the engine.

This is where it gets a little crazy.

The propane bottle needs to be in a tank of water, 80% submerged, with a large heating element maintaining the water temperature at 30 degrees Celsius. I used a 3 kilowatt immersion heating element from a house. Without this constant heating of the propane bottle the liquid will not turn to gas quickly enough and so pressure in the fuel line will drop, risking catastrophic failure (boom).", project_id: gas_turbine.id)
gas_turbine_step_5 = ProjectStep.create!(heading: "Step 5: Instrumentation", body: "Instrumentation is the key to control of the gas turbine. Using only the minimum instruments, you will need:

1 x Air pressure (boost) gauge [0 - 2.5 Bar] or [0 - 35 psi]

1 x Oil pressure gauge [0 - 2.5 bar] or [0 - 35 psi]

1 x Oil temperature gauge [0 - 120 deg Celsius]

1 x Exhaust gas temperature gauge (Use K type thermocouple with gauge) [200 - 1400 deg Celsius]

It is of utmost importance to take the pickup for the oil pressure gauge at the nearest point to the top of the turbine. Failure to do so may result in catastrophic failure (boom). Oil temperature can be taken from the tank. Boost pressure can be taken from the combustion chamber, although it is easier to take it from the turbo where the waste gate was fed. Exhaust gas temperature should be taken inside the turbine housing, approximately 50mm away from the turbine wheel.

Optional is a laser thermometer with the greatest range possible. These are cheap online and allow you to measure the temperature of various surfaces during turbine operation. The outside of my combustion chamber has a normal operating temperature of 70 degrees Celsius.

When the gas turbine is running, you should a have constant 2 Bar on the oil pressure gauge, bearing in mind when the oil heats up the pressure will drop a little so be prepared to adjust for this.

Oil temperature should be 70 - 80 degrees Celsius once engine is warm.

Boost pressure should not exceed 2.2 Bar although this depends greatly on the turbo specifications. See your turbo manufacturers compressor map for details. The Garrett TB0333 compressor map of my gas turbine is pictured above.

Exhaust gas temperature should be 450 degrees Celsius, and should not exceed 550 degrees Celsius. Although I have seen 1100 degrees Celsius momentarily on mine, prolonged exposure of the turbine wheel to high temperatures can result in catastrophic failure (boom).

Pictured above is:

My instrumentation setup boost pressure, oil pressure, oil temperature, exhaust gas temperature

The compressor map for my Garrett TB0333 turbocharger (Note: the revolutions per minute go up to 153,400..!)", project_id: gas_turbine.id)
gas_turbine_step_6 = ProjectStep.create!(heading: "Step 6: Start Up Sequence", body: "I recommend using a petrol powered leaf blower to start the gas turbine as this is the simplest method.

You could also use an airline from a compressor, but this is less reliable / safe.

1. Switch on oil pump, adjust oil bypass valve till oil pressure gauge reads 2 Bar.

2. Start up petrol powered leaf blower, put the outlet of the leaf blower to the inlet of the turbo.

3. Introduce a small amount of propane, and begin ignition sequence immediately.

4. Engine will start with a loud pop, remove leaf blower immediately.

5. Maintain low idle, until oil warms to 80 degrees Celsius. Adjust oil pressure back to 2 Bar once it heats up and the pressure drops. Now you can throttle the engine, keeping an eye on boost pressure and exhaust gas temperature.

There are many ways to construct a gas turbine, so do your research as you could well find a solution that better suits your requirements.

Above is a picture of a pressure tested combustion chamber I made from mild steel.

Build a gas turbine at your own risk, post pictures of it up here.

Ignition starts @ 4 min 46 sec:", project_id: gas_turbine.id)

tesla_coil_step_1 = ProjectStep.create!(heading: "Step 1: Materials", body: "The materials we used were:

5 cm diameter (on the inside) pvc pipe (the longer the better, the excess part of the pipe can be cut off)
Alot of copper wire (used for both the primary and secondary coils, and the doughnut on the top)
Something to hold the doughnut (here we used thin metal plate that you can fasten with skrews, see picture in
step 5)
A small metal rod (used to form the doughnut around)
A round piece of plastic (this doesn't have to be a piece of plastic, it is just used as a piece to hold the doughnut)
A 3D printer
Halogen light tube
A power source, here comes our problem. We didn't use a HV power source, so we didn't get a high enough voltage.", project_id: tesla_coil.id)
tesla_coil_step_2 = ProjectStep.create!(heading: "Step 2: 3D Printing the Parts", body: "The files can be found here: https://github.com/BroderAndy/Tesla-parts.git

The four pillars that holds the primary coil is printed on an Ultimaker 3 extended and the two other parts were printed on a MakerBot: Replicator 2.

You can use whatever 3D printer you have but the settings on the printer may vary for each part.

All the parts fits, but you may have to be a little rough to get them some of them together. A tip is to use a rubber mallet on the four pillars to get them to fit.", project_id: tesla_coil.id)
tesla_coil_step_3 = ProjectStep.create!(heading: "Step 3: Secondary Coil", body: "our secondary coil consists of 900 windings of copper wiring. We started at the bottom where drilled a whole into the PVC pipe. Here we stuck the copper wiring in and out bellow so we could use that end to connect it to the ground on the circuit board. When all the windings were done at the top we fasten it with some tape so it wouldn't unravel. At the top we also let there copper wire continue to go so we could solder it to the doughnut at the top.", project_id: tesla_coil.id)
tesla_coil_step_4 = ProjectStep.create!(heading: "Step 4: Primary Coil", body: "For the primary coil we ran copper wire through the four pillars from the bottom to the top, by doing that we could tune the machine by connecting the wire from the power supply at different heights.", project_id: tesla_coil.id)
tesla_coil_step_5 = ProjectStep.create!(heading: "Step 5: The Top", body: "The top of our tesla coil is just a third coil on top of the rest. Here we started by bending a metal rod into a circle that we could wind the coils around, and use to to attach the top coil to the the lid that sits on top of the secondary coil. After the third coil was made we took an plastic lid and attached the metal strips that would hold the third coil in place with skrews. in the middel of the plastic lid we drilled a hole that the excess wire from the secondary coil could come through and get sodered to the third coil.", project_id: tesla_coil.id)
tesla_coil_step_6 = ProjectStep.create!(heading: "Step 6: The Circuit", body: "The circuit we used was a very simple amplifier just for testing, the way the circuit works is by amplifying the signal from the function generator before passing in through the primary coil. Be sure to set your function generator to square waves to make your delta A as big as possible. You may have to tune the frequency of your function generator to match you secondary coils frequency. The best way I found to tune was to put your light tube on top of your tesla coil and adjust the frequency until the light turned on, then you can try to remove your light while you continuously adjust your frequency.", project_id: tesla_coil.id)
tesla_coil_step_7 = ProjectStep.create!(heading: "Step 7: The Result", body: "The results we got when we were done were not the sparks we were hoping for. As you can see in the picture, we only got it to light up a halogen light tube.", project_id: tesla_coil.id)

stirling_engine_step_1 = ProjectStep.create!(heading: "Step 1: What Is a Stirling Cycle Engine?", body: "The Stirling cycle engine was invented by Robert Stirling in 1816, so it has been around for a while. It is a heat engine, and is based upon a cycle of heating, then cooling, of a gas (usually air) contained within the engine.Since a Stirling engine is air tight, during the heating phase the air pressure inside increases, and during the cooling phase the pressure decreases.   A displacer connected to the crankshaft moves the internal air from hot side  to cold side of a cylinder. The change in pressure drives a power piston, which is also connected to the crankshaft. Since there are two stages, hot and cold, it is a two cycle engine

This diagram shows the concept of a traditional LTD Stirling cycle engine.The components of the engine described in this Instructableare arranged differently, but the concept is the same.", project_id: stirling_engine.id)
stirling_engine_step_2 = ProjectStep.create!(heading: "Step 2: Components", body: "Here are the components of the engine I built, which are similar to those shown in the previous diagram. I used copper for many of the components due to its excellent thermal conductivity. I used aluminum also; its thermal conductivity is good but not as good as copper. Both materials are very easy to work using common shop tools.

The steps that follow will describe  design details of the flywheel and  crankshaft,  displacer cylinder and displacer piston,  and the power piston.", project_id: stirling_engine.id)
stirling_engine_step_3 = ProjectStep.create!(heading: "Step 3: Flywheel and Crankshaft", body: "I built the flywheel from a sheet of aluminum; cutting it roughly on a band saw then finishing it on a belt sander. The “hub” is made from two strips of brass bar stock, attached with machine screws and nuts. This helps align the flywheel and prevents wobble. I drilled the hubs and flywheel with a 5/32in drill and pressed in the 5/32in shaft; it was tight enough.

You can see in the photos how the crankshaft and crank pin are designed.I drilled and tapped a brass bar to thread onto the threaded 5/32in flywheel shaft. The crank pin is just a machine screw that threads onto a drilled and tapped hole in the brass bar. This way it is easy to change the crank throw distance; just drill and tap a new hole at the desired distance. Also, the phase angle can easily be changed by loosening the 5/32in nut on the crankshaft, rotating the crank throw, and re-tightening the nut.

Design details:

Flywheel:   Aluminum, 0 .100” sheet, 5” diameter
Crank throws:  Brass bar stock; 3/32” x ¼”; drilled and tapped for shaft and crank pin
Crank pins: Machine screws and nuts, #2 screws  48 tpi
Shaft:   Brass rod, 5/32” diameter.
Bearings:   Ball bearings, 5/32” ID,  5/16” OD (from Boca Bearings)
Hub: Brass bar stock;  3/32” x ¼”
Crank throw distance, piston: 5/16” (so piston travel is 5/8”)
Crank throw distance, displacer:  1.0”  (so the displacer travels 2.0”)
Phase angle between power piston and displacer piston: 90º
Tip: When you make any round items (like the flywheel) be sure to start by marking it out with a compass and mark the center with a punch.Knowing the exact center will be important later.
Tip: Brass and aluminum are easy to drill and tap. I don’t always usea proper tap, I just drill a slightly undersize hole and then use the screw as a tap. The screws are stainless steel so harder than brass or aluminum. I did use a die for threading the shaft. Use 8-32 threads for 5/32” diameter shaft.", project_id: stirling_engine.id)
stirling_engine_step_4 = ProjectStep.create!(heading: "Step 4: Displacer Cylinder and Piston", body: "The displacer cylinder and piston can be considered a heat exchanger, because heat from a flame (in this case) is being transferred to the air inside the bottom part of the cylinder. When the displacer piston moves to the bottom of the cylinder, the air moves (is displaced) to the top part of the cylinder, which it cools. The engine makes one heating/cooling cycle each revolution of the flywheel. Since the system is air-tight, it also has an air pressure increase/decrease cycle each revolution.

The displacer cylinder is made from two sections of 2” diameter copper pipe, separated in the middle by a wood spacer. The wood serves as a thermal break between the hot section below and cooler section above. The plate at the bottom is also copper, soldered to the pipe section using 95/5 lead free plumbing solder.  This solder has a melting point of 450° F (232° C), so the heat source has to be controlled. The operating temperature using two candles is 250° F (121° C). Another limitation is the temperature of the epoxy glue used to attach the copper pipe sections to the wood spacer; ordinary epoxy adhesive is OK to about 350°F  (177°C). The cylinder head is aluminum, and is bolted to a mating flange, which is  glued to the upper cylinder. The cylinder head is metal-to-metal contact with the upper copper cylinder, so there can be heat transfer between cylinder and head, therefore both cylinder and head can radiate the heat away and cool the air inside. I used a piece of Teflon for the bearing in the cylinder head.

The displacer piston is made from heavy paper wrapped around a 1 1/2” pipe (actual diameter 1.9”) and glued together, the ends are foam board. Shaft is 0.0625” steel wire. The displacer length is 2.0”.

Design details: 
Displacer cylinder: 2” type M copper pipe, ID = 2.0”, OD = 2.125”. Gap between hot side and cold side = 3/8”.

Insulating spacer: hardwood, ID = 2.125”, drilled with 2 1/8” hole saw, then used epoxy to glue copper pipe sections to wood spacer.

Displacer piston: 1.9” diameter x 2.0” long. As a general rule, displacer piston volume should be ½ total displacer cylinder volume. Bearing in cylinder head is Teflon, with drilled 0.070” hole for 0.0625” displacer piston shaft.

Tip: The present cylinder head is 4” x 4” aluminum, 0.10” plate. For better heat transfer, it could be larger and made of copper.

Tip: Since the displacer piston volume should be 1/2 the volume of the displacer cylinder, I made the  piston length 2in, the total length of the cylinder being just over 4in. The piston should be a loose fit in the cylinder; it is important that the piston not rub on the cylinder wall.", project_id: stirling_engine.id)
stirling_engine_step_5 = ProjectStep.create!(heading: "Step 5: Power Piston", body: "The power piston and cylinder drive the engine, using pressure cycles from the displacer cylinder. They are the only purchased components in this engine. The piston is made from graphite, the cylinder is glass; the parts are manufactured to close tolerance and are practically friction free and air tight.  I glued the glass cylinder into a 3/4in diameter hole bored into a block of wood; opposite the cylinder is a short length of 1/4in copper tubing.

Design details:

Power piston and cylinder:  Piston diameter 5/8”; piston stroke 5/16”. Purchased from Airpot Corporation (no, not  the same company that makes coffee pots)
Connecting rod: 3/32” brass wire soldered to brass sheet.", project_id: stirling_engine.id)
stirling_engine_step_6 = ProjectStep.create!(heading: "Step 6: Power Calculations and Performance", body: "I used a shop built dynamometer to calculate power output of the engine.

Power output of any rotating engine is based upon only two factors: torque and RPM.  I used the device shown in the photo to measure torque, and could count revolutions to determine RPM.  To measure torque, I made a  prony brake out of balsa, then regulated the clamping force around the flywheel shaft by tightening a screw until the RPM decreased, and recorded the force on a digital scale.

P=Power, W
T=Torque, Nm
N=Engine rotational speed, RPM

Here are the equations, data and  calculation:
P =T * π * N/30  or approximately T * N * 0.1047

RPM = 140
Torque arm = 200 mm = 0.2 m
Net scale reading, maximum: =1.7 g = 0.0017 kg
Force = m * g =  0.0017 * 9.8 = 0.017 N
Torque = f * d = 0.017 * 0.2 = 0.0034 Nm
Power =  T * N * 0.1047 = 0.0034 * 100 * 0.1047 = 0.05 W

Not a huge power output, which is why minimum friction is so important.

Other operating data:
Maximum RPM = 175
Minimum temperature difference = 110ºF  (43ºC)", project_id: stirling_engine.id)
stirling_engine_step_7 = ProjectStep.create!(heading: "Step 7: Tools", body: "I built this engine in a woodworking shop, with no special tools. Both aluminum and brass can be cut with carbide tipped saw blades, but use care. When cutting thin metals on a table or band saw, it is safer to first attach them with double sided tape to a carrier sheet of plywood.

Here are specific tools:
Set of small size wrenches (my only splurge)
Drill press
Table and/or band saw
Butane torch for soldering copper
Hole saw", project_id: stirling_engine.id)

theremin_organ_synth_step_1 = ProjectStep.create!(heading: "Step 1: How 555 Timers Work", body: "A 555 timer is an integrated circuit (IC) chip that is used to generate a square wave. It can be used in timer/flip-flop applications or as an oscillator. In this instance, we are using it to generate square waves at various frequencies to create the different notes of the instruments. By altering the RC circuit that we are feeding into the 555 timer, we can change the frequency of the output square wave to play different notes. All of the instrument circuits are fundamentally the same. They just use different means of changing the RC circuitry we are providing as an input. In these circuits, we will be using the 555 timers in astable and monostable configurations (more on this later).

Before we dive fully into the 555 timer, there are some fundamental building blocks we need to understand. The first is a comparator shown in the red block and the yellow block. A comparator has two inputs and one output. When the V+ input is greater than the V- input (denoted with the bubble), it drives the output high. When the V+ input is less than the V- input, it drives the output low. There are two comparators inside the 555 timer circuitry. These comparators are used to turn the output of the 555 timer on or off based on the threshold value and the trigger value.

The second circuit component we need to understand is the SR (set-reset) Flip-Flop shown in the purple. The truth table for the implementation logic of the SR flip-flop is shown in the table above. The SR flip-flop sets the state of the output based on the state of the comparators. The threshold comparator is connected to the Reset pin of the flip-flop and the trigger comparator is connected to the Set pin of the flip-flop.

The push-pull output driver shown in pink is used to source current for the output. The transistor shown in blue is used to connect the discharge pin to ground, typically to discharge an external capacitor. The 3 resistors shown in green are of equal value. They divide the supply voltage, VCC, into 2/3 and 1/3 of its value. These values are used as the reference voltages for the comparators.

Although it looks complicated at first glance, the 555 timer essentially just charges and discharges an external capacitor and toggles the output based on the state of the capacitor. Starting out, the external capacitor is discharged meaning that the trigger voltage is less than 1/3 Vcc. This turns on the trigger/set comparator, driving the output high. The external capacitor continues to charge until it gets above 2/3 Vcc. At that point, the threshold/reset comparator turns on, driving the output low. The discharge transistor connects the external capacitor to ground causing it to discharge. Once the external capacitor drops below 1/3 Vcc, the entire process repeats over and over again creating our neverending square wave.

In case it still doesn't click, you can check out these simulations courtesy of Paul Falstad. I am a fairly visual learner, so seeing circuit simulations really helps me understand what is going on in a circuit.

555 timer square wave simulation - http://www.falstad.com/circuit/e-555square.html

555 timer internals simulation - http://www.falstad.com/circuit/e-555int.html

We will predominantly be using the 555 timers in astable mode. This means the circuit is fed by an RC circuit and is free-running to generate an output square wave. The Atari Punk Console uses the first 555 timer in astable mode and the second 555 timer in monostable mode. Monostable mode means that it is fed by an external source and outputs a one-shot pulse. In the Atari Punk Console, we are using an astable 555 timer to provide a signal to the monostable 555 timer.", project_id: theremin_organ_synth.id)

theremin_organ_synth_step_2 = ProjectStep.create!(heading: "Step 2: Theremin", body: "Now it's time to make your theremin! Instead of using proximity like a typical theremin, this theremin uses light intensity to determine the note's frequency. This theremin has two photoresistors in the RC circuit feeding the 555 timer circuit to affect the rate of charging/discharging of the capacitor. The resistance of a photoresistor decreases as the light intensity decreases meaning the capacitor will take longer to charge and discharge. So by reducing the amount of light getting to your photoresistors, you reduce the frequency being played. To increase the frequency, increase the light intensity.

To build your theremin, start by placing the 555 timer chip on a breadboard. You can build the circuit any way you want. I typically start by placing components in sequential order starting at pin 1 of the IC chip and moving all the way around to pin 8. Make sure you place some distance between your photoresistors so that you can control the amount of light getting to each photoresistor separately. Be careful noting the polarity on your capacitors and the speaker. R5 is a potentiometer that is used for volume control.

Once you have built the circuit, go around the IC from pin 1 to pin 8 again to double-check that everything is connected properly. To confirm nothing is shorted, you can connect a multimeter between pin 1 and pin 8 on your 555 timer. You should see a fair amount of resistance between these two points. Once you are sure everything is connected properly, you can connect the 9V battery. Your theremin should start making noise! If you don't hear anything or the sound is faint, adjust R5 to finetune the volume to your liking.

Since the ambient light intensity can vary greatly based on where you are playing your theremin, you may have to swap out C3. If the frequency range on your theremin is too high pitched, try switching C3 for a capacitor with a slightly larger capacitance value. If the frequency is too low, try a slightly lower value capacitor.", project_id: theremin_organ_synth.id)
theremin_organ_synth_step_3 = ProjectStep.create!(heading: "Step 3: Organ", body: "Now it's time to make your organ! The organ uses a 555 timer circuit in astable mode. The tactile switches are used to switch in different capacitors to determine the frequency of the tone that is played. You can add as many different switches and capacitors in parallel as you want. You can also combine them together by pressing two buttons or keys at the same time (combining capacitors in parallel results in an equivalent capacitance value equal to the sum of the two capacitances which will produce a sound that's frequency is lower than either of the two switches on their own).

To calculate the specific tone of each of your keys, you can use the following equation. R1 is going to be the value of your potentiometer based on the position of the wiper and R2 is 10kOhm. C is the value of the capacitor that you are switching in. f is the resulting frequency in Hertz. 0.693 is the natural log of 2.

f = 1 / (0.693×C×(R1 + 2×R2))

As a starting point, above is a table of some common capacitance values with their corresponding calculated frequencies assuming that R1 is 100 kOhm. Remember that if you don't have the exact capacitance value you are looking for, you can combine capacitors using the following equations.

For capacitors in series: 1/C_equivalent = 1/C1 + 1/C2 + 1/C3

For capacitors in parallel: C_equivalent = C1 + C2 + C3

To more easily figure out how you can combine capacitors you already have to create a specific capacitance value, check out this Instructable and try out my Stocked Resistor/Capacitor Equivalence Calculator.

Build your organ in the same way you built your theremin. Start by placing the 555 timer chip on the breadboard. Remember you need will need to save a lot of space for the pushbuttons. Start placing the rest of the components beginning with the parts connected to pin 1 of the IC and moving all the way around to pin 8. I placed the buttons and their corresponding capacitors after connecting everything else.

Be careful noting the polarity on your capacitors and the speaker. As before, double-check the circuit and confirm nothing is shorted. Once you are sure everything is connected properly, you can connect the 9V battery. Press the keys and your organ should start playing! If you don't hear anything or the sound is faint, adjust R3 to finetune the volume to your liking.", project_id: theremin_organ_synth.id)
theremin_organ_synth_step_4 = ProjectStep.create!(heading: "Step 4: Atari Punk Console", body: "Now it's time to make your Atari Punk Console! The Atari Punk Console (APC) is essentially an astable 555 timer circuit generating a square wave to drive a monostable 555 timer circuit which creates a single square pulse. There are two potentiometers for control: one for the frequency of the oscillator (R2) and one for the pulse width (R3). The APC is considered one of the most iconic simple DIY synthesizers.

Build your Atari Punk Console in the same way you built your other instruments. I would begin by building the circuit for the first 555 timer (U1) before moving on to the second 555 timer (U2). Start placing the rest of the components beginning with the parts connected to pin 1 of the IC and moving all the way around to pin 8. Once you have finished the circuitry surrounding U1, add U2 to the board and construct the circuitry surrounding U2.

As before, be careful noting the polarity on your capacitors and the speaker. Double-check the circuit and confirm nothing is shorted. Once you are sure everything is connected properly, you can connect the 9V battery. Your APC should start playing! Start twisting the frequency and pulse-width knobs and playing your very own synthesizer. If you don't hear anything or the sound is faint, adjust R4 to finetune the volume to your liking.", project_id: theremin_organ_synth.id)
theremin_organ_synth_step_5 = ProjectStep.create!(heading: "Step 5: Battle! Remix!", body: "Now you've got all three instruments and you're ready to assemble your band! In my class, I gave about a day and a half to go through the 555 timer, build the circuits, assemble bands, come up with a name and logo, write songs, and prepare a performance. The end result was a lot of fun. There were bands with perfectly tuned instruments who played near-perfect renditions of Lavender Town and other bands who went with more of a free jazz, improvisational approach. All-in-all, these are really fun circuits for anyone at any level to play around with.

You can also try remixing these circuits even more! Try swapping the potentiometers in the APC for photoresistors. Try combining the organ or theremin with the second stage of the APC. Try using thermistors or pressure-sensitive resistors in place of the photoresistors. Try using fixed resistors and variable capacitors instead of fixed capacitors and variable resistors. There are so many different directions you can take these instruments. Have fun!", project_id: theremin_organ_synth.id)

theremin_organ_synth_step_6 = ProjectStep.create!(heading: "Step 6: More Projects", body: "For more projects, visit my pages:

https://dargenio.dev/

https://github.com/mjdargen

https://www.instructables.com/member/mjdargen/", project_id: theremin_organ_synth.id)
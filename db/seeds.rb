# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Registry.create(title: "Round Trip Airfare", description: "We want to explore Japan! Help us get there.", total_cost: 4000, remaining_amount: 4000, desired_amount: 100, multiplier: 40, image: "https://i.telegraph.co.uk/multimedia/archive/02070/air-getty_2070440c.jpg")
Registry.create(title: "Lodging", description: "Keep Us Well Rested - no hostels on this honeymoon", total_cost: 2500, remaining_amount: 2500, desired_amount: 50, multiplier: 50, image: "https://tokyo5.files.wordpress.com/2009/03/dscf4677.jpg")
Registry.create(title: "Classic Japanese Meals", description: "Japanese food is creative and delicious. This gift will help us taste our way around Japan.", total_cost: 300, remaining_amount: 300, desired_amount: 75, multiplier: 4, image: "https://www.onislam.net/english/oimedia/onislamen/images/mainimages/Japanese-Traditional-Sushi-Recipe.jpg")
Registry.create(title: "Spa Day", description: "What honeymoon would be complete without some relaxation?", total_cost: 150, remaining_amount: 150, desired_amount: 50, multiplier: 3, image: "https://ak-hdl.buzzfed.com/static/2013-10/enhanced/webdr03/1/12/enhanced-buzz-wide-21599-1380645416-11.jpg")
Registry.create(title: "Cooking Class", description: "Pablo says my rice could use some work. Help me feed my hungry husband - and give him a chance to surprise me in the kitchen!", total_cost: 100, remaining_amount: 100, desired_amount: 20, multiplier: 5, image: "https://media-cache-ec0.pinimg.com/736x/23/a4/26/23a42649f0ee14effe791c718f691cde.jpg")
Registry.create(title: "Sightseeing", description: "From gardens to temples to hot springs and islands, there is so much to explore!", total_cost: 200, remaining_amount: 200, desired_amount: 50, multiplier: 4, image: "https://upload.wikimedia.org/wikipedia/commons/1/17/Horyu-ji11s3200.jpg")
Registry.create(title: "Wild Card", description: "Inspire us to do something unique on our first big international trip as husband and wife.", total_cost: 250, remaining_amount: 250, desired_amount: 25, multiplier: 10, image: "https://www.anniesbacktoedengarden.com/images/10%20best%20cherry%20blossom%20japan.jpg")

User.create(name: "Jaclyn Karnowski", email: "jaclyn@wedding.com", rsvp_response: 'yes')
User.create(name: "Ashley Karnowski", email: "ashleyk@wedding.com", rsvp_response: 'yes')
User.create(name: "Pablo Perez", email: "pabloperezpp@hotmail.com", rsvp_response: 'yes')


Playlist.create(song: "Lean On", user_id: 1)
Playlist.create(song: "Powerful", user_id: 2)
Playlist.create(song: "Sweet Escape", user_id: 2)
Playlist.create(song: "Cool For the Summer", user_id: 3)
Playlist.create(song: "Right Here, Right Now", user_id: 3)






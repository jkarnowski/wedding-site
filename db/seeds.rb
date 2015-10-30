# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Registry.create(title: "Round Trip Airfare", description: "We want to explore Japan! Help us get there.", total_cost: 4000, image: "http://i.telegraph.co.uk/multimedia/archive/02070/air-getty_2070440c.jpg")
Registry.create(title: "Lodging", description: "Keep Us Well Rested - no hostels on this honeymoon", total_cost: 2500, image: "https://tokyo5.files.wordpress.com/2009/03/dscf4677.jpg")
Registry.create(title: "Classic Japanese Meals", description: "Japanese food is creative and delicious. This gift will help us taste our way around Japan.", total_cost: 300, image: "http://www.onislam.net/english/oimedia/onislamen/images/mainimages/Japanese-Traditional-Sushi-Recipe.jpg")
Registry.create(title: "Spa Day", description: "What honeymoon would be complete without some relaxation?", total_cost: 150, image: "http://ak-hdl.buzzfed.com/static/2013-10/enhanced/webdr03/1/12/enhanced-buzz-wide-21599-1380645416-11.jpg")
Registry.create(title: "Cooking Class", description: "Pablo says my rice could use some work. Help me feed my hungry husband - and give him a chance to surprise me in the kitchen!", total_cost: 100, image: "http://media-cache-ec0.pinimg.com/736x/23/a4/26/23a42649f0ee14effe791c718f691cde.jpg")
Registry.create(title: "Sightseeing", description: "From gardens to temples to hot springs and islands, there is so much to explore!", total_cost: 400, image: "https://upload.wikimedia.org/wikipedia/commons/1/17/Horyu-ji11s3200.jpg")
Registry.create(title: "Wild Card", description: "Inspire us to do something unique on our first big international trip as husband and wife.", total_cost: 250, image: "http://www.anniesbacktoedengarden.com/images/10%20best%20cherry%20blossom%20japan.jpg")

Playlist.create(song: "Lean On")
Playlist.create(song: "Powerful")
Playlist.create(song: "Sweet Escape")
Playlist.create(song: "Cool For the Summer")
Playlist.create(song: "Right Here, Right Now")






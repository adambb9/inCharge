# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Topic.destroy_all
Subtopic.destroy_all
Tile.destroy_all
puts "DB Cleaned"

user1 = User.create!(first_name: "John", last_name: "Jones", email: "jj@gmail.com", password: "Hello1")
user2 = User.create!(first_name: "Ben", last_name: "Dover", email: "bd@gmail.com", password: "Hello1")
user3 = User.create!(first_name: "Moe", last_name: "Sizlak", email: "moe@gmail.com", password: "Hello1")
user4 = User.create!(first_name: "Harry", last_name: "Cane", email: "harry@gmail.com", password: "Hello1")
puts "User seeded"

topic1 = Topic.create!(title: "News")
topic2 = Topic.create!(title: "Weather")
topic3 = Topic.create!(title: "Sport")
topic4 = Topic.create!(title: "Culture")
topic5 = Topic.create!(title: "Finance")
topic6 = Topic.create!(title: "Travelling")
topic7 = Topic.create!(title: "Real Estate")
topic8 = Topic.create!(title: "Tech")
topic9 = Topic.create!(title: "Pets")
puts "Topic seeded"
#News
subtopic1 = Subtopic.create!(title: "World", topic_id: topic1.id)
subtopic2 = Subtopic.create!(title: "Regional", topic_id: topic1.id)
subtopic3 = Subtopic.create!(title: "Local", topic_id: topic1.id)
subtopic4 = Subtopic.create!(title: "Environmental", topic_id: topic1.id)
subtopic5 = Subtopic.create!(title: "Politics", topic_id: topic1.id)
#Sport
subtopic6 = Subtopic.create!(title: "Football", topic_id: topic3.id)
subtopic7 = Subtopic.create!(title: "Rugby", topic_id: topic3.id)
subtopic8 = Subtopic.create!(title: "Tennis", topic_id: topic3.id)
subtopic9 = Subtopic.create!(title: "Golf", topic_id: topic3.id)
subtopic10 = Subtopic.create!(title: "Basketball", topic_id: topic3.id)
subtopic11 = Subtopic.create!(title: "Mountain Unicycling", topic_id: topic3.id)
subtopic12 = Subtopic.create!(title: "Diving", topic_id: topic3.id)
subtopic13 = Subtopic.create!(title: "American Football", topic_id: topic3.id)
subtopic14 = Subtopic.create!(title: "Ice Hockey", topic_id: topic3.id)
subtopic15 = Subtopic.create!(title: "BMX", topic_id: topic3.id)
#Culture
subtopic16 = Subtopic.create!(title: "Art", topic_id: topic4.id)
subtopic17 = Subtopic.create!(title: "Architecture", topic_id: topic4.id)
subtopic18 = Subtopic.create!(title: "History", topic_id: topic4.id)
subtopic19 = Subtopic.create!(title: "Design", topic_id: topic4.id)
subtopic20 = Subtopic.create!(title: "Theatre", topic_id: topic4.id)
subtopic21 = Subtopic.create!(title: "Movies", topic_id: topic4.id)
subtopic22 = Subtopic.create!(title: "Literature", topic_id: topic4.id)
subtopic23 = Subtopic.create!(title: "Events", topic_id: topic4.id)
#Finance
subtopic24 = Subtopic.create!(title: "Investing", topic_id: topic5.id)
subtopic25 = Subtopic.create!(title: "Cryptos", topic_id: topic5.id)
subtopic26 = Subtopic.create!(title: "Mortgages", topic_id: topic5.id)
subtopic27 = #TRAVELLING = ["Hotels", "Flights", "Deals", "Events"]
subtopic28 = Subtopic.create!(title: "Hotels", topic_id: topic6.id)
subtopic29 = Subtopic.create!(title: "Flights", topic_id: topic6.id)
subtopic30 = Subtopic.create!(title: "Deals", topic_id: topic6.id)
subtopic31 = Subtopic.create!(title: "Events", topic_id: topic6.id)
subtopic32 = Subtopic.create!(title: "Destinations", topic_id: topic6.id)
#REALESTATE = ["Rental Market", "Buying Market", "Development"]
subtopic33 = Subtopic.create!(title: "Rental Market", topic_id: topic7.id)
subtopic34 = Subtopic.create!(title: "Buying Market", topic_id: topic7.id)
subtopic35 = Subtopic.create!(title: "Development", topic_id: topic7.id)
subtopic36 = #TECH = ["Coding", "Gadgets", "Silicon Valley", "Future"]
subtopic37 = Subtopic.create!(title: "Coding", topic_id: topic8.id)
subtopic38 = Subtopic.create!(title: "Gadgets", topic_id: topic8.id)
subtopic39 = Subtopic.create!(title: "Silicon Valley", topic_id: topic8.id)
subtopic40 = Subtopic.create!(title: "Future", topic_id: topic8.id)
subtopic41 = #PETS = ["Dogs", "Cats", "Birds", "Elephants"]
subtopic42 = Subtopic.create!(title: "Dogs", topic_id: topic9.id)
subtopic43 = Subtopic.create!(title: "Cats", topic_id: topic9.id)
subtopic44 = Subtopic.create!(title: "Birds", topic_id: topic9.id)
subtopic45 = Subtopic.create!(title: "Elephants", topic_id: topic9.id)
puts "Subtopic seeded"
#Tiles
#News
tile1 = Tile.create!(title: "Russians feel the pain of international sanctions", summary: "If I could leave Russia right now, I would. But I can't quit my job.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic1.id)
tile2 = Tile.create!(title: "Australia floods: Residents and horses trapped on bridge overnight", summary: "Up to 50 residents and their animals have been trapped overnight on a bridge in Woodburn, as they tried to escape rising floodwaters. There have been over 1,000 flood rescues so far in the fatal north-east New South Wales flood emergency.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic2.id)
tile3 = Tile.create!(title: "London Tube strike: All lines down after workers walk out", summary: "All London Underground lines are suspended after thousands of workers began strike action.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic3.id)
tile4 = Tile.create!(title: "Climate change: Five things we've learned from the IPCC report", summary: "A new report released this week by the UN's Intergovernmental Panel on Climate Change (IPCC) looks at the causes, impacts and solutions to climate change.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic4.id)
tile5 = Tile.create!(title: "Ministers defeated over asylum seeker and citizenship plans", summary: "The government has suffered a series of defeats in the House of Lords over its borders bill including plans to treat asylum seekers differently depending on how they arrive in the UK. ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic5.id)
#Sport
tile6 = Tile.create!(title: "Six Nations 2022: Unstoppable France, disarray in Dublin and confused England", summary: "Another round of Six Nations rugby is over and there are just three teams left in the title race with two games to go.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic7.id)
tile7 = Tile.create!(title: "Daniil Medvedev: How the new men's world number one overtook Novak Djokovic", summary: "New men's world number one Daniil Medvedev says the only way to make him angry away from the tennis court is to knock on his hotel door at 6am seven days in a row. ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic8.id)
tile8 = Tile.create!(title: "Daniil Medvedev: How the new men's world number one overtook Novak Djokovic", summary: "New men's world number one Daniil Medvedev says the only way to make him angry away from the tennis court is to knock on his hotel door at 6am seven days in a row. ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic8.id)
#Culture
tile9 = Tile.create!(title: "The Best Movies of 2021, Ranked by Tomatometer", summary: "Rotten Tomatoes is collecting every new Certified Fresh movie into one list, creating our guide to the best movies of 2021. Among them you’ll find blockbusters (Shang-Chi), documentaries (Lily Topples the World), awards contenders (The Green Knight), the cutting-edge in horror (The Night House).", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic21.id)
tile10 = Tile.create!(title: "Cast and creatives for Mike Bartlett's The 47th at the Old Vic announced", summary: "The play opens at the end of March ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic20.id)
#Finance
tile11 = Tile.create!(title: "The 2 Best ETFs for Dividends", summary: "These two ETFs are built to deliver the most dividend income possible", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic24.id)
tile12 = Tile.create!(title: "Can Shiba Inu Reach $1?", summary: "A monstrous jump seems unlikely.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic25.id)
tile13 = Tile.create!(title: "Get the lowdown on mortgages for first time buyers", summary: "Your home may be repossessed if you do not keep up repayments on your mortgage.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic26.id)
#Travelling
tile14 = Tile.create!(title: "Gal Vihara", summary: "Part of Parakramabahu I’s northern monastery, Gal Vihara is a group of beautiful Buddha images that probably marks the high point of Sinhalese rock carving.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic31.id)
tile15 = Tile.create!(title: "A Guide to Carnival ('Carnestoltes')  24 February 2022 - 02 March 2022", summary: "A Background to Carnival in Barcelona and Catalunya.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic30.id)
#Realestate
tile15 = Tile.create!(title: "2021 was best year for Spanish home sales since 2007", summary: "The coronavirus pandemic might have energised a Spanish housing market that was running out of steam before the virus struck, which begs the question how long will that impetus last?", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic32.id)
tile16 = Tile.create!(title: "Renting in Spain: What’s the maximum amount a landlord can ask as a deposit?", summary: "Landlords are asking for larger deposits since the coronavirus pandemic. Why is this? Find out your rights!", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic33.id)

subscription1 = Subscription.create!(user_id: user1.id, tile_id: tile1.id)
subscription2 = Subscription.create!(user_id: user1.id, tile_id: tile2.id)
subscription3 = Subscription.create!(user_id: user1.id, tile_id: tile14.id)
subscription4 = Subscription.create!(user_id: user1.id, tile_id: tile4.id)
subscription5 = Subscription.create!(user_id: user1.id, tile_id: tile5.id)
subscription6 = Subscription.create!(user_id: user1.id, tile_id: tile7.id)
subscription7 = Subscription.create!(user_id: user1.id, tile_id: tile11.id)

subscription8 = Subscription.create!(user_id: user2.id, tile_id: tile10.id)
subscription9 = Subscription.create!(user_id: user2.id, tile_id: tile15.id)
subscription10 = Subscription.create!(user_id: user2.id, tile_id: tile16.id)
subscription11 = Subscription.create!(user_id: user2.id, tile_id: tile12.id)
subscription12 = Subscription.create!(user_id: user2.id, tile_id: tile9.id)
subscription13 = Subscription.create!(user_id: user2.id, tile_id: tile8.id)

subscription14 = Subscription.create!(user_id: user3.id, tile_id: tile8.id)
subscription15 = Subscription.create!(user_id: user3.id, tile_id: tile5.id)
subscription16 = Subscription.create!(user_id: user3.id, tile_id: tile6.id)
subscription17 = Subscription.create!(user_id: user3.id, tile_id: tile7.id)
subscription18 = Subscription.create!(user_id: user3.id, tile_id: tile11.id)
subscription19 = Subscription.create!(user_id: user3.id, tile_id: tile10.id)
subscription20 = Subscription.create!(user_id: user3.id, tile_id: tile3.id)
subscription21 = Subscription.create!(user_id: user3.id, tile_id: tile4.id)
subscription22 = Subscription.create!(user_id: user3.id, tile_id: tile5.id)

subscription23 = Subscription.create!(user_id: user4.id, tile_id: tile4.id)
subscription24 = Subscription.create!(user_id: user4.id, tile_id: tile3.id)
subscription25 = Subscription.create!(user_id: user4.id, tile_id: tile11.id)
subscription26 = Subscription.create!(user_id: user4.id, tile_id: tile9.id)
subscription27 = Subscription.create!(user_id: user4.id, tile_id: tile11.id)
subscription28 = Subscription.create!(user_id: user4.id, tile_id: tile13.id)
subscription29 = Subscription.create!(user_id: user4.id, tile_id: tile14.id)
subscription30 = Subscription.create!(user_id: user4.id, tile_id: tile6.id)
puts "Subscription seeded!"
puts "DB seeded!"

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

User.create!(first_name: "John", last_name: "Jones", email: "jj@gmail.com", password: "Hello1")
User.create!(first_name: "Ben", last_name: "Dover", email: "bd@gmail.com", password: "Hello1")
User.create!(first_name: "Moe", last_name: "Sizlak", email: "moe@gmail.com", password: "Hello1")
User.create!(first_name: "Harry", last_name: "Cane", email: "harry@gmail.com", password: "Hello1")
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
Subtopic.create!(title: "World", topic_id: topic1.id)
Subtopic.create!(title: "Regional", topic_id: topic1.id)
Subtopic.create!(title: "Local", topic_id: topic1.id)
Subtopic.create!(title: "Environental", topic_id: topic1.id)
Subtopic.create!(title: "Politics", topic_id: topic1.id)
#Sport
Subtopic.create!(title: "Football", topic_id: topic3.id)
Subtopic.create!(title: "Rugby", topic_id: topic3.id)
Subtopic.create!(title: "Tennis", topic_id: topic3.id)
Subtopic.create!(title: "Golf", topic_id: topic3.id)
Subtopic.create!(title: "Basketball", topic_id: topic3.id)
Subtopic.create!(title: "Mountain Unicycling", topic_id: topic3.id)
Subtopic.create!(title: "Diving", topic_id: topic3.id)
Subtopic.create!(title: "American Football", topic_id: topic3.id)
Subtopic.create!(title: "Ice Hockey", topic_id: topic3.id)
Subtopic.create!(title: "BMX", topic_id: topic3.id)
#Culture
Subtopic.create!(title: "Art", topic_id: topic4.id)
Subtopic.create!(title: "Architecture", topic_id: topic4.id)
Subtopic.create!(title: "History", topic_id: topic4.id)
Subtopic.create!(title: "Design", topic_id: topic4.id)
Subtopic.create!(title: "Theatre", topic_id: topic4.id)
Subtopic.create!(title: "Movies", topic_id: topic4.id)
Subtopic.create!(title: "Literature", topic_id: topic4.id)
Subtopic.create!(title: "Events", topic_id: topic4.id)
#Finance
Subtopic.create!(title: "Investing", topic_id: topic5.id)
Subtopic.create!(title: "Cryptos", topic_id: topic5.id)
Subtopic.create!(title: "Mortgages", topic_id: topic5.id)
#TRAVELLING = ["Hotels", "Flights", "Deals", "Events"]
Subtopic.create!(title: "Hotels", topic_id: topic6.id)
Subtopic.create!(title: "Flights", topic_id: topic6.id)
Subtopic.create!(title: "Deals", topic_id: topic6.id)
Subtopic.create!(title: "Events", topic_id: topic6.id)
Subtopic.create!(title: "Destinations", topic_id: topic6.id)
#REALESTATE = ["Rental Market", "Buying Market", "Development"]
Subtopic.create!(title: "Rental Market", topic_id: topic7.id)
Subtopic.create!(title: "Buying Market", topic_id: topic7.id)
Subtopic.create!(title: "Development", topic_id: topic7.id)
#TECH = ["Coding", "Gadgets", "Silicon Valley", "Future"]
Subtopic.create!(title: "Coding", topic_id: topic8.id)
Subtopic.create!(title: "Gadgets", topic_id: topic8.id)
Subtopic.create!(title: "Silicon Valley", topic_id: topic8.id)
Subtopic.create!(title: "Future", topic_id: topic8.id)
#PETS = ["Dogs", "Cats", "Birds", "Elephants"]
Subtopic.create!(title: "Dogs", topic_id: topic9.id)
Subtopic.create!(title: "Cats", topic_id: topic9.id)
Subtopic.create!(title: "Birds", topic_id: topic9.id)
Subtopic.create!(title: "Elephants", topic_id: topic9.id)
puts "Subtopic seeded"
#Tiles
#News
tile1 = Tile.create!(title: "Russians feel the pain of international sanctions", summary: "If I could leave Russia right now, I would. But I can't quit my job.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 1)
tile2 = Tile.create!(title: "Australia floods: Residents and horses trapped on bridge overnight", summary: "Up to 50 residents and their animals have been trapped overnight on a bridge in Woodburn, as they tried to escape rising floodwaters. There have been over 1,000 flood rescues so far in the fatal north-east New South Wales flood emergency.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 2)
tile3 = Tile.create!(title: "London Tube strike: All lines down after workers walk out", summary: "All London Underground lines are suspended after thousands of workers began strike action.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 3)
tile4 = Tile.create!(title: "Climate change: Five things we've learned from the IPCC report", summary: "A new report released this week by the UN's Intergovernmental Panel on Climate Change (IPCC) looks at the causes, impacts and solutions to climate change.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 4)
tile5 = Tile.create!(title: "Ministers defeated over asylum seeker and citizenship plans", summary: "The government has suffered a series of defeats in the House of Lords over its borders bill including plans to treat asylum seekers differently depending on how they arrive in the UK. ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 5)
#Sport
tile6 = Tile.create!(title: "Six Nations 2022: Unstoppable France, disarray in Dublin and confused England", summary: "Another round of Six Nations rugby is over and there are just three teams left in the title race with two games to go.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 7)
tile7 = Tile.create!(title: "Daniil Medvedev: How the new men's world number one overtook Novak Djokovic", summary: "New men's world number one Daniil Medvedev says the only way to make him angry away from the tennis court is to knock on his hotel door at 6am seven days in a row. ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 8)
tile8 = Tile.create!(title: "Daniil Medvedev: How the new men's world number one overtook Novak Djokovic", summary: "New men's world number one Daniil Medvedev says the only way to make him angry away from the tennis court is to knock on his hotel door at 6am seven days in a row. ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 8)
#Culture
tile9 = Tile.create!(title: "The Best Movies of 2021, Ranked by Tomatometer", summary: "Rotten Tomatoes is collecting every new Certified Fresh movie into one list, creating our guide to the best movies of 2021. Among them you’ll find blockbusters (Shang-Chi), documentaries (Lily Topples the World), awards contenders (The Green Knight), the cutting-edge in horror (The Night House).", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 21)
tile10 = Tile.create!(title: "Cast and creatives for Mike Bartlett's The 47th at the Old Vic announced", summary: "The play opens at the end of March ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 20)
#Finance
tile11 = Tile.create!(title: "The 2 Best ETFs for Dividends", summary: "These two ETFs are built to deliver the most dividend income possible", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 24)
tile12 = Tile.create!(title: "Can Shiba Inu Reach $1?", summary: "A monstrous jump seems unlikely.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 25)
tile13 = Tile.create!(title: "Get the lowdown on mortgages for first time buyers", summary: "Your home may be repossessed if you do not keep up repayments on your mortgage.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 26)
#Travelling
tile14 = Tile.create!(title: "Gal Vihara", summary: "Part of Parakramabahu I’s northern monastery, Gal Vihara is a group of beautiful Buddha images that probably marks the high point of Sinhalese rock carving.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 31)
tile15 = Tile.create!(title: "A Guide to Carnival ('Carnestoltes')  24 February 2022 - 02 March 2022", summary: "A Background to Carnival in Barcelona and Catalunya.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 30)
#Realestate
tile15 = Tile.create!(title: "2021 was best year for Spanish home sales since 2007", summary: "The coronavirus pandemic might have energised a Spanish housing market that was running out of steam before the virus struck, which begs the question how long will that impetus last?", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 32)
tile16 = Tile.create!(title: "Renting in Spain: What’s the maximum amount a landlord can ask as a deposit?", summary: "Landlords are asking for larger deposits since the coronavirus pandemic. Why is this? Find out your rights!", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: 33)


puts "DB seeded!"

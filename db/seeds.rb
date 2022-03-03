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
#Culture
tile9 = Tile.create!(title: "The Best Movies of 2021, Ranked by Tomatometer", summary: "Rotten Tomatoes is collecting every new Certified Fresh movie into one list, creating our guide to the best movies of 2021. Among them you’ll find blockbusters (Shang-Chi), documentaries (Lily Topples the World), awards contenders (The Green Knight), the cutting-edge in horror (The Night House).", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic21.id)
tile10 = Tile.create!(title: "Cast and creatives for Mike Bartlett's The 47th at the Old Vic announced", summary: "The play opens at the end of March ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic20.id)
#Finance
tile11 = Tile.create!(title: "The 2 Best ETFs for Dividends", summary: "These two ETFs are built to deliver the most dividend income possible", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic24.id)
tile12 = Tile.create!(title: "Can Shiba Inu Reach $1?", summary: "A monstrous jump seems unlikely.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic25.id)
tile13 = Tile.create!(title: "Get the lowdown on mortgages for first time buyers", summary: "Your home may be repossessed if you do not keep up repayments on your mortgage.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic26.id)
#Travelling
tile14 = Tile.create!(title: "Gal Vihara", summary: "Part of Parakramabahu I’s northern monastery, Gal Vihara is a group of beautiful Buddha images that probably marks the high point of Sinhalese rock carving.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic32.id)
tile15 = Tile.create!(title: "A Guide to Carnival ('Carnestoltes')  24 February 2022 - 02 March 2022", summary: "A Background to Carnival in Barcelona and Catalunya.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic31.id)
#Realestate
tile16 = Tile.create!(title: "2021 was best year for Spanish home sales since 2007", summary: "The coronavirus pandemic might have energised a Spanish housing market that was running out of steam before the virus struck, which begs the question how long will that impetus last?", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic34.id)
tile17 = Tile.create!(title: "Renting in Spain: What’s the maximum amount a landlord can ask as a deposit?", summary: "Landlords are asking for larger deposits since the coronavirus pandemic. Why is this? Find out your rights!", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic33.id)
puts "Tiles created"
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
subscription12 = Subscription.create!(user_id: user2.id, tile_id: tile17.id)
subscription13 = Subscription.create!(user_id: user2.id, tile_id: tile7.id)

subscription14 = Subscription.create!(user_id: user3.id, tile_id: tile13.id)
subscription15 = Subscription.create!(user_id: user3.id, tile_id: tile5.id)
subscription16 = Subscription.create!(user_id: user3.id, tile_id: tile6.id)
subscription17 = Subscription.create!(user_id: user3.id, tile_id: tile7.id)
subscription18 = Subscription.create!(user_id: user3.id, tile_id: tile11.id)
subscription19 = Subscription.create!(user_id: user3.id, tile_id: tile10.id)
subscription20 = Subscription.create!(user_id: user3.id, tile_id: tile3.id)
subscription21 = Subscription.create!(user_id: user3.id, tile_id: tile4.id)
subscription22 = Subscription.create!(user_id: user3.id, tile_id: tile2.id)

subscription23 = Subscription.create!(user_id: user4.id, tile_id: tile4.id)
subscription24 = Subscription.create!(user_id: user4.id, tile_id: tile3.id)
subscription25 = Subscription.create!(user_id: user4.id, tile_id: tile11.id)
subscription26 = Subscription.create!(user_id: user4.id, tile_id: tile9.id)
subscription27 = Subscription.create!(user_id: user4.id, tile_id: tile17.id)
subscription28 = Subscription.create!(user_id: user4.id, tile_id: tile13.id)
subscription29 = Subscription.create!(user_id: user4.id, tile_id: tile14.id)
subscription30 = Subscription.create!(user_id: user4.id, tile_id: tile6.id)
puts "Subscription seeded!"


tile1.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216011/inCharge/_123457130_mediaitem123457129_ycituh.jpg"), filename: 'rbank.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216256/inCharge/_123447177_hi074207788_karqzn.jpg"), filename: 'soldier.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216301/inCharge/_123458058_626c730f-3fc5-4afb-a355-7190b7a95ae6_j6kz4u.jpg"), filename: 'metro.jpeg', content_type: 'image/jpg'}])

tile2.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216430/inCharge/skynews-brisbane-flooding_5689609_xnlygl.jpg"), filename: 'flood.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216471/inCharge/_91187771_14355154_10154568656338470_8351616187830956388_n_u0cfl7.jpg"), filename: 'koala.jpeg', content_type: 'image/jpg'}])

tile3.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216685/inCharge/_123472855_pastrike_vh4omn.jpg"), filename: 'strike.jpeg', content_type: 'image/jpg'}])

tile4.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217027/inCharge/59199509_303_pbylrl.jpg"), filename: 'smog.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646216874/inCharge/20200324_Global_average_temperature_-_NASA-GISS_HadCrut_NOAA_Japan_BerkeleyE_uwo31q.svg"), filename: 'climategraph.jpeg', content_type: 'image/jpg'}])

tile5.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217167/inCharge/houses-of-parliament_houses-of-parliament-and-big-ben-copyright-visitlondoncom-image-courtesy-of-visitlondoncom_3b46e1728fbabca66763a8904c4424af_a0lsb1.jpg"), filename: 'parliament.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217194/inCharge/_117678731_23b2e90a-509b-4619-934c-1cf6c0a2799e_tg96ea.jpg"), filename: 'asylum.jpeg', content_type: 'image/jpg'}])

tile6.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217349/inCharge/SN-Restart-16x9_Website_gomdrf.png"), filename: 'rugby1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217394/inCharge/3314749-67775248-2560-1440_moif8n.jpg"), filename: 'rugby2.jpeg', content_type: 'image/jpg'}])

tile7.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217673/inCharge/skysports-novak-djokovic-daniil-medvedev_5280304_drrnh1.jpg"), filename: 'tennis1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217649/inCharge/how-novak-djokovic-defeated-daniil-medvedev-in-their-previous-melbourne-clash_rhslwo.jpg"), filename: 'tennis2.jpeg', content_type: 'image/jpg'}])

tile9.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217874/inCharge/MV5BZGRhYjE2NWUtN2FkNy00NGI3LTkxYWMtMDk4Yjg5ZjI3MWI2XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_FMjpg_UX1000__uwfxaw.jpg"), filename: 'film1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646217922/inCharge/El_Escuadr_n_Suicida-629689677-large_b50thr.jpg"), filename: 'film2.jpeg', content_type: 'image/jpg'}])

tile10.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218098/inCharge/apollo-featired_nucvmd.jpg"), filename: 'theatre1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218173/inCharge/the-old-vic_vbhzym.jpg"), filename: 'theatre2.jpeg', content_type: 'image/jpg'}])

tile11.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218627/inCharge/GettyImages-504112194_2400-930be4e2277c45cf9cfa5058053272b0_ohggvg.png"), filename: 'invest1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218655/inCharge/e56929b3bc230358250f6ef092710ead_juouav.png"), filename: 'invest2.jpeg', content_type: 'image/jpg'}])

tile12.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218740/inCharge/what-sparked-32-rally-in-shiba-inu_i5wwk5.jpg"), filename: 'shiba1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218771/inCharge/screenshot-2021-10-27-at-19-50-11-shiba-inu-price-shib-chart-market-cap-and-info-coingecko_m4upn4.png"), filename: 'shiba2.jpeg', content_type: 'image/jpg'}])

tile13.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218916/inCharge/960x0_pof3dz.jpg"), filename: 'mortgage1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646218944/inCharge/1003x-1_qdp6tb.jpg"), filename: 'mortgage2.jpeg', content_type: 'image/jpg'}])

tile14.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219072/inCharge/gal-vihara_pgqorh.jpg"), filename: 'sri1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219164/inCharge/image101_asgwu7.jpg"), filename: 'sri2.jpeg', content_type: 'image/jpg'}])

tile15.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219310/inCharge/final_destacada_carnaval_eufsqd.jpg"), filename: 'carnival1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219344/inCharge/carnaval-de-sitges_12_658x347_xnnbvh.jpg"), filename: 'carnival2.jpeg', content_type: 'image/jpg'}])

tile16.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219504/inCharge/imagereader.aspx_uoy9db.jpg"), filename: 'sale1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219542/inCharge/home-sales-ine-notaries-mar-2021_oci2t6.jpg"), filename: 'sale2.jpeg', content_type: 'image/jpg'}])

tile17.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219583/inCharge/house_rentals_ulkoqc.jpg"), filename: 'rent1.jpeg', content_type: 'image/jpg'},
  {io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646219623/inCharge/clipping_Npc2Li_c9e6_wjiid9.jpg"), filename: 'rent2.jpeg', content_type: 'image/jpg'}])

puts "Photos seeded!"
puts "DB seeded!"

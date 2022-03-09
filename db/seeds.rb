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

user1 = User.create!(first_name: "John", last_name: "Jones", email: "jj@gmail.com", password: "Hello1", num_tiles: 13)
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

#TRAVELLING = ["Hotels", "Flights", "Deals", "Events"]

subtopic28 = Subtopic.create!(title: "Hotels", topic_id: topic6.id)
subtopic29 = Subtopic.create!(title: "Flights", topic_id: topic6.id)
subtopic30 = Subtopic.create!(title: "Deals", topic_id: topic6.id)
subtopic31 = Subtopic.create!(title: "Events", topic_id: topic6.id)
subtopic32 = Subtopic.create!(title: "Destinations", topic_id: topic6.id)
#REALESTATE = ["Rental Market", "Buying Market", "Development"]
subtopic33 = Subtopic.create!(title: "Rental Market", topic_id: topic7.id)
subtopic34 = Subtopic.create!(title: "Buying Market", topic_id: topic7.id)
subtopic35 = Subtopic.create!(title: "Development", topic_id: topic7.id)
#TECH = ["Coding", "Gadgets", "Silicon Valley", "Future"]
subtopic37 = Subtopic.create!(title: "Coding", topic_id: topic8.id)
subtopic38 = Subtopic.create!(title: "Gadgets", topic_id: topic8.id)
subtopic39 = Subtopic.create!(title: "Silicon Valley", topic_id: topic8.id)
subtopic40 = Subtopic.create!(title: "Future", topic_id: topic8.id)
#PETS = ["Dogs", "Cats", "Birds", "Elephants"]
subtopic42 = Subtopic.create!(title: "Dogs", topic_id: topic9.id)
subtopic43 = Subtopic.create!(title: "Cats", topic_id: topic9.id)
subtopic44 = Subtopic.create!(title: "Birds", topic_id: topic9.id)
subtopic45 = Subtopic.create!(title: "Elephants", topic_id: topic9.id)

subtopic46 = Subtopic.create!(title: "Current Weather", topic_id: topic2.id)

subtopic47 = Subtopic.create!(title: "Business", topic_id: topic1.id)
subtopic48 = Subtopic.create!(title: "Entertainment", topic_id: topic1.id)
subtopic49 = Subtopic.create!(title: "General", topic_id: topic1.id)
subtopic50 = Subtopic.create!(title: "Health", topic_id: topic1.id)
subtopic51 = Subtopic.create!(title: "Science", topic_id: topic1.id)
subtopic52 = Subtopic.create!(title: "Technology", topic_id: topic1.id)

puts "Subtopic seeded"
#Tiles
#News
tile1 = Tile.create!(title: "Russians feel the pain of international sanctions", summary: "If I could leave Russia right now, I would. But I can't quit my job.", content: "So far, Western governments have been careful not to further escalate either rhetoric or the action. The US military has its own defence readiness alert status known as Defcon, and today White House Press Secretary Jen Psaki said there was 'no reason to change' its nuclear alert levels at the moment. The UK has nuclear armed submarines at sea and is also unlikely to say anything publicly. The aim appears to be to treat the Russian statement as bluster and not increase tensions by appearing to take it too seriously or take any actions which might spark a Russian response. This is not currently a nuclear crisis and it must not become one, Western security officials say.", subtopic_id: subtopic1.id)
tile2 = Tile.create!(title: "Australia floods: Residents and horses trapped on bridge overnight", summary: "Up to 50 residents and their animals have been trapped overnight on a bridge in Woodburn, as they tried to escape rising floodwaters. There have been over 1,000 flood rescues so far in the fatal north-east New South Wales flood emergency.", content: "In the past 24 hours, emergency services were called to 100 flood rescues across the state, a number that is expected to rise as the full force of the storms bears down on Sydney Tuesday. In the northern reaches of New South Wales -- where floodwaters this week destroyed homes, washed away cars and stranded hundreds of locals on their roofs -- a long, slow cleanup is under way. There are 800 people in emergency accommodation in the state's Northern Rivers region alone, state emergency services commissioner Charlene York.", subtopic_id: subtopic2.id)
tile3 = Tile.create!(title: "London Tube strike: All lines down after workers walk out", summary: "All London Underground lines are suspended after thousands of workers began strike action.", content: "The RMT’s London tube strikes of last week had a devastating impact on passenger numbers, according to Department for Transport (DfT) figures. Data showed that on Tuesday and Thursday ridership numbers plummeted to 4 per cent of pre-pandemic levels – the lowest since the Covid pandemic first hit in March 2020. On 4 March, levels went up to 52 per cent – 15 per cent down on the previous week. According to the DfT, the industrial strike impacted also on the days following the strike, because of Transport for London’s (TfL) difficulty to run a full bus service, despite ridership being up 7 per cent on previous days. RMT members took the streets over jobs, pensions and working conditions, bringing the capital to a standstill, City A.M. reported.", subtopic_id: subtopic3.id)
tile4 = Tile.create!(title: "Climate change: Five things we've learned from the IPCC report", summary: "A new report released this week by the UN's Intergovernmental Panel on Climate Change (IPCC) looks at the causes, impacts and solutions to climate change.", content: "Speakers outlined how to take forward the progress made in Glasgow to COP27 in Sharm el-Sheikh, priorities for the global climate agenda in light of the new IPCC report, and practical steps the humanitarian, development, and other international communities can take to ensure we heed the warnings. As COP26 President Alok Sharma stated in January, 'Just as the science has become starker, the risks have become clearer, and the calls to action have grown louder, the opportunities presented by tackling climate change are increasingly evident.' 'We need to make sure that science comes first,' said Archie Young, the UK lead climate negotiator. ", subtopic_id: subtopic4.id)
tile5 = Tile.create!(title: "Ministers defeated over asylum seeker and citizenship plans", summary: "The government has suffered a series of defeats in the House of Lords over its borders bill including plans to treat asylum seekers differently depending on how they arrive in the UK. ", content: "In the House of Lords on Tuesday evening, peers attacked one of the bill's provisions which would make it a criminal offence to knowingly arrive in the UK without permission. Those coming via official routes - such as the Syrian resettlement scheme - would be fast-tracked into a new life in the UK. Meanwhile, people relying on other routes, including using people smugglers, to get to the UK could struggle to get permanent residence, or be sent back to safe countries they have passed through along the way. It comes as Home Secretary Priti Patel is facing pressure to reduce the numbers trying to get to the UK by crossing the channel on boats. However Labour's Lord Dubs - who escaped Nazi Germany as a child - said people often struggled to get to the UK by the official routes.", subtopic_id: subtopic5.id)
#Sport
tile6 = Tile.create!(title: "Six Nations 2022: Unstoppable France, disarray in Dublin and confused England", summary: "Another round of Six Nations rugby is over and there are just three teams left in the title race with two games to go.", content: "Ireland dusted themselves off as Johnny Sexton’s penalty got them on the board before Cian Healy burrowed his way over from close range for a converted try. This would be the only time the hosts led, however, as Stockdale fumbled Daly’s kick ahead, under pressure from Jack Nowell, allowing the former to get the ball down. Farrell’s penalty extended England’s advantage to 17-10 at half-time and although Sexton cancelled this out, the visitors pulled further clear after 66 minutes when Henry Slade grounded May’s kick down the left wing. An impressive English victory was sealed when Slade did well to intercept Sexton’s pass to score again, with Ireland having the final word through John Cooney’s last-minute try.", subtopic_id: subtopic7.id)
tile7 = Tile.create!(title: "Daniil Medvedev: How the new men's world number one overtook Novak Djokovic", summary: "New men's world number one Daniil Medvedev says the only way to make him angry away from the tennis court is to knock on his hotel door at 6am seven days in a row. ", content: "Medvedev is the first player outside the ‘Big Four’ of Djokovic, Roger Federer, Rafael Nadal and Andy Murray to hold the top spot in 18 years, three weeks and six days, since Andy Roddick on 1 February 2004. The last time there was a new World No. 1 was more than five years ago, when Murray made it there on 7 November 2016. Medvedev is the third Russian to achieve the feat, joining Yevgeny Kafelnikov and Marat Safin. Kafelnikov spent six weeks atop the ATP Rankings and Safin was in the top spot for nine weeks. Medvedev, who stands at 198cm, is the tallest player to earn the honour in the history of the ATP Rankings. The 26-year-old is also the sixth-oldest player to reach World No. 1 for the first time.", subtopic_id: subtopic8.id)
#Culture
tile9 = Tile.create!(title: "The Best Movies of 2021, Ranked by Tomatometer", summary: "Rotten Tomatoes is collecting every new Certified Fresh movie into one list, creating our guide to the best movies of 2021. Among them you’ll find blockbusters (Shang-Chi), documentaries (Lily Topples the World), awards contenders (The Green Knight), the cutting-edge in horror (The Night House).", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic21.id)
tile10 = Tile.create!(title: "Cast and creatives for Mike Bartlett's The 47th at the Old Vic announced", summary: "The play opens at the end of March ", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic20.id)
#Finance
tile11 = Tile.create!(title: "The 2 Best ETFs for Dividends", summary: "These two ETFs are built to deliver the most dividend income possible", content: "The SPDR Portfolio S&P 500 High Dividend ETF generates one of the highest yields on the market along with a high annual payout. This great dividend-producing ETF tracks the S&P 500 High Dividend Index, which consists of the 80 stocks in the index with the highest dividend yields based on the latest dividends. Also, it is equal-weighted, with all of the holdings roughly the same size. The three largest holdings currently are Organon, AbbVie, and Valero Energy. Financials (17%), Utilities (17%), Real Estate (13%), and Energy (13%) are the sectors that are most represented. The ETF, currently trading at $43 per share, has a dividend yield of 4.05%, which is well higher than most other dividend ETFs and higher than the 1.38% median dividend on the S&P 500. Over the past year, it paid out dividends totaling $1.56 per share. If you owned 100 shares of this ETF, you would have $156 in income.", subtopic_id: subtopic24.id)
tile12 = Tile.create!(title: "Can Shiba Inu Reach $1?", summary: "A monstrous jump seems unlikely.", content: "The current value of Shiba Inu is $0.000021, so increasing to a dollar would represent an increase of 4,700,000%, although some specialists believe that the growth that the currency has had in the last year makes a new giant leap viable. This cryptocurrency is traded at such a small price because its supply is too high, 549 billion SHIB tokens in circulation, with a market capitalization of around $11 billion. To think of Shiba Inu reaching a value of one dollar would mean its market capitalization would be $549 billion, 203 times the value of companies like Apple ($2.7 trillion) and 366 times that of Amazon ($1.5 trillion), plus more than six times the world's annual GDP.", subtopic_id: subtopic25.id)
tile13 = Tile.create!(title: "Get the lowdown on mortgages for first time buyers", summary: "Your home may be repossessed if you do not keep up repayments on your mortgage.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic26.id)
#Travelling
tile14 = Tile.create!(title: "Gal Vihara", summary: "Part of Parakramabahu I’s northern monastery, Gal Vihara is a group of beautiful Buddha images that probably marks the high point of Sinhalese rock carving.", content: "Sri Lanka is the cradle of one of the longest-surviving civilisations of the world and its priceless Buddhist treasures have withstood the ravages of time. THE flight from Chennai to Colombo is a kaleidoscopic experience. The plane cruises along the emerald coast of the Indian peninsula where waves flirt with beige sands, their pearly froth sketching an undulating design along the shores. Through the scratched panes of your Airbus 320 you spot Poompuhar, where the Cauvery, sapphire-hued and serpentine, mingles with the turquoise of the Bay of Bengal. The sun glides down the horizon rapidly and its golden rays pierce the imperious ocean and turn it into an expanse of translucent topaz. For a few minutes you soar over open seas, and then Thalaimannar, the sword-shaped projection jutting out into the sea, comes into view, and you begin your descent into palm-fringed Colombo.", subtopic_id: subtopic32.id)
tile15 = Tile.create!(title: "A Guide to Carnival ('Carnestoltes')  24 February 2022 - 02 March 2022", summary: "A Background to Carnival in Barcelona and Catalunya.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic31.id)
#Realestate
tile16 = Tile.create!(title: "2021 was best year for Spanish home sales since 2007", summary: "The coronavirus pandemic might have energised a Spanish housing market that was running out of steam before the virus struck, which begs the question how long will that impetus last?", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic34.id)
tile17 = Tile.create!(title: "Renting in Spain: What’s the maximum amount a landlord can ask as a deposit?", summary: "Landlords are asking for larger deposits since the coronavirus pandemic. Why is this? Find out your rights!", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic33.id)
#news2
tile18 = Tile.create!(title: "Roman’s empire: how the seeds of Abramovich’s demise were there all along", summary: "Almost 20 years after his high profile purchase, the oligarch is looking to sell Chelsea. Here’s the story of how it unravelled", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic1.id)
tile19 = Tile.create!(title: "As U.S. and European businesses cut ties with Russia, Chinese tech firms remain silent", summary: "American firms such as Apple and Disney have reduced their business in Russia after the country invaded Ukraine but Chinese technology firms have remained silent on the issue.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic1.id)

#destination2
tile21 = Tile.create!(title: "Grand Teton National Park", summary: "Park in Yellowstone & Grand Teton National Parks", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic32.id)
tile22 = Tile.create!(title: "Wat Arun", summary: "Top choice Buddhist Temple in Ko Ratanakosin & Thonburi", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic32.id)
#tech
tile23 = Tile.create!(title: "If AI Is Predicting Your Future, Are You Still Free?", summary: "Part of being human is being able to defy the odds. Algorithmic prophecies undermine that.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic40.id)
tile24 = Tile.create!(title: "The History of Predicting the Future", summary: "Humans have long tried to determine the shape of what’s to come. But even the most advanced technology can’t solve the fundamental issues with predictions.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic40.id)
tile25 = Tile.create!(title: "Crime Prediction Keeps Society Stuck in the Past", summary: "So long as algorithms are trained on racist historical data and outdated values, there will be no opportunities for change.", content: "#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}#{Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)}", subtopic_id: subtopic40.id)




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

tile18.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646382763/inCharge/2021-01-25T132108Z_167137623_RC21FL9XYKXQ_RTRMADP_3_SOCCER-ENGLAND-LAMPARD_yc2eib.jpg"), filename: 'worldnews2.jpeg', content_type: 'image/jpg'}])

tile19.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646382822/inCharge/150615095702-alibaba-780x439_blrlkg.jpg"), filename: 'worldnews3.jpeg', content_type: 'image/jpg'}])

tile21.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646384854/inCharge/shutterstockRF_325784873.jpg_xu4eey.jpg"), filename: 'destination2.jpeg', content_type: 'image/jpg'}])
tile22.photos.attach([{io: URI.open("https://lp-cms-production.imgix.net/2020-11/500pxRF_241509159.jpg?auto=compress&crop=center&fit=crop&format=auto&h=832&w=1920"), filename: 'destination3.jpeg', content_type: 'image/jpg'}])

tile23.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646385352/inCharge/960x0_nlxlku.jpg"), filename: 'future1.jpeg', content_type: 'image/jpg'}])
tile24.photos.attach([{io: URI.open("https://res.cloudinary.com/dpauqhmri/image/upload/v1646385606/inCharge/Crystal-Ball-Large-Transparent-Glass-Ball-Lucky-Rainbow-Photo-Ball-Decoration-Ball.jpg_Q90.jpg__rgidpo.jpg"), filename: 'future2.jpeg', content_type: 'image/jpg'}])
tile25.photos.attach([{io: URI.open("https://ichef.bbci.co.uk/news/640/cpsprodpb/7E99/production/_96690423_original.jpg"), filename: 'future3.jpeg', content_type: 'image/jpg'}])

puts "Photos seeded!"

puts "Api tiles seeded!"
puts "DB seeded!"

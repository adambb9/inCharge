class Subtopic < ApplicationRecord
  NEWS = ["World", "Regional", "Local", "Environental", "Politics"]
  SPORT = ["Football", "Rugby", "Tennis", "Golf", "Basketball", "Baseball", "American Football", "Handball", "Ice Hockey"]
  CULTURE = ["Art", "Architecture", "History", "Design", "Theatre", "Movies", "Literature", "Events"]
  FINANCE = ["Stock Exchange", "Cryptos", "Mortgages"]
  TRAVELLING = ["Hotels", "Flights", "Deals", "Events"]
  REALESTATE = ["Rental Market", "Buying Market", "Development"]
  TECH = ["Coding", "Gadgets", "Silicon Valley", "Future"]
  PETS = ["Dogs", "Cats", "Birds", "Elephants"]
  has_many :subscriptions
  belongs_to :topic

  validates :title, presence: true
  validates :title, inclusion: { in: [NEWS, SPORT, CULTURE, FINANCE, TRAVELLING, REALESTATE, TECH, PETS] }
end

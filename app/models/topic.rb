class Topic < ApplicationRecord
  TITLES = ["News", "Weather", "Sport", "Culture", "Finance", "Travelling", "Real Estate", "Tech", "Pets"]
  has_many :subtopics

  validates :title, presence: true
  validates :title, inclusion: { in: TITLES }
end

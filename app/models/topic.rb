class Topic < ApplicationRecord
  has_many :subtopics

  validates :title, presence: true
end

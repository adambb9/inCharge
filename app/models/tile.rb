class Tile < ApplicationRecord
  belongs_to :subtopic
  has_many_attached :photos

  validates :title, :summary, :content, presence: true
  validates :title, length: { minimum: 6 }
  validates :summary, length: { minimum: 6 }
end

class Subtopic < ApplicationRecord
  has_many :subscriptions
  belongs_to :topic

  validates :title, presence: true
end

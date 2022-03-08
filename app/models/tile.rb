class Tile < ApplicationRecord

  belongs_to :subtopic
  has_many_attached :photos

  validates :title, :summary, :content, presence: true
  validates :title, length: { minimum: 6 }
  validates :summary, length: { minimum: 6 }


  include PgSearch::Model
  pg_search_scope :search_by_title_summary_content,
    against: [ :title, :summary, :content ],
    associated_against: {
      subtopic: [ :title ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

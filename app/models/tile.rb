class Tile < ApplicationRecord

  LANG_CATEGORIES = ["de", "en", "es", "fr", "nl", "pt"]
  COUNTRY_CATEGORIES = ["au", "be", "br", "ca", "de", "fr", "gb", "nl", "us"]

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

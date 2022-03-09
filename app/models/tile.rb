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

  def refresh_data
    query = self.subtopic.title
    url = build_api_query(query)
    response = parse_query(url)
    self.title = response["title"]
    self.summary = response["description"]
    self.content = response["content"]
    self.picture_url = response["urlToImage"]
    self.source = response["source"]["name"]
    self.author = response["author"]
    self.url = response["url"]
  end

  private

  def build_api_query(query)
    url = "https://newsapi.org/v2/top-headlines?q=#{query}&pageSize=1&apiKey=8d87341021534a57b58acbaf56e2aaaf"
  end

  def parse_query(url)
    response = URI.open(url).read
    JSON.parse(response)["articles"][0]
  end
end

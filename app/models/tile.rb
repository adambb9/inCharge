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
    url = build_api_query
    response = parse_query(url)
    return if response.nil?

    self.title = response["title"]
    self.summary = response["description"]
    self.content = response["content"]
    self.picture_url = response["urlToImage"] || "https://cdn.mos.cms.futurecdn.net/FaWKMJQnr2PFcYCmEyfiTm.jpg"
    self.source = response["source"]["name"]
    self.author = response["author"]
    self.url = response["url"]
    self
  end

  private

  def build_api_query
    url = "https://newsapi.org/v2/top-headlines?q=#{subtopic.title}&language=#{language || 'en'}&country=#{country || 'us' }&pageSize=1&apiKey=#{ENV['NEWS_API_KEY2']}"
  end

  def parse_query(url)
    response = URI.open(url).read
    JSON.parse(response)["articles"][0]
  end
end

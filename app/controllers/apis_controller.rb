require "json"
require "open-uri"

class ApisController < ApplicationController

  def show
    url = build_api_query('top-headlines?q=trump')
    @response = parse_query(url)
  end

  def new

  end

  def create

  end

  def build_api_query(query)
    url = "https://newsapi.org/v2/#{query}&apiKey=8d87341021534a57b58acbaf56e2aaaf"
  end

  def parse_query(url)
    response = URI.open(url).read
    parsed_response = JSON.parse(response)[articles]
  end

  def create_tile
    url = build_api_query('top-headlines?q=trump')
    @response = parse_query(url)
    @tile = Tile.new
    @tile.title = @response.title
    @tile.summary = @repsonse.description
    @tile.content = @response.content
    @tile.picture_url = @reponse.urlToImage
    @tile.source = @response.author
    @tile.url = @response.url
    @tile.subtopic_id = 1
    if @tile.save!
      redirect_to tile_path(@tile)
    else
    end
  end

end

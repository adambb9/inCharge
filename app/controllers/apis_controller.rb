require "json"
require "open-uri"

class ApisController < ApplicationController

  def db_seed
  end

  def show
    url = build_api_query('top-headlines?q=trump')
    @response = parse_query(url)
    create_tile
  end

  def new
    @tile = Tile.new
  end

  def create
    @tile = Tile.new(api_params)
    if @tile.save!
      redirect_to tile_path(@tile)
    else
      render :new
    end
  end

  def build_api_query(query)
    url = "https://newsapi.org/v2/#{query}&pageSize=1&apiKey=8d87341021534a57b58acbaf56e2aaaf"
  end

  def parse_query(url)
    response = URI.open(url).read
    parsed_response = JSON.parse(response)["articles"][0]
  end

  def create_tile
    url = build_api_query('top-headlines?q=trump')
    @response = parse_query(url)
    @tile = Tile.new(tile_params)
    @tile.title = @response["title"]
    @tile.summary = @response["description"]
    @tile.content = @response["content"]
    @tile.picture_url = @response["urlToImage"]
    @tile.source = @response["source"]["name"]
    @tile.author = @response["author"]
    @tile.url = @response["url"]
    @tile.subtopic_id = 1
    if @tile.save!
      redirect_to tile_path(@tile)
    else
    end
  end

  private

  def api_params
    params.require(:api).permit(:title, :description, :content, :picture_url, :source, :url, subtopic_id: [])
  end
end

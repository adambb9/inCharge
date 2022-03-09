require 'json'
require 'open-uri'

class TilesController < ApplicationController
  before_action :set_tile, only: [:show]
  before_action :set_subtopic, only: [:index]
  def index
    @tiles = Tile.where(subtopic_id: params[:subtopic_id])
  end

  def show
    subtopic_id = @tile.subtopic_id
    @tiles = Tile.where(subtopic_id: subtopic_id)
  end


  def all

    if params[:query].present?
      @tiles = Tile.search_by_title_summary_content(params[:query])
    else
      @tiles = Tile.all
    end
  end

  def new
    @tile = Tile.new
  end

  def create
    @tile = Tile.new(tile_params)
    subtopic = Subtopic.find(params[:tile][:subtopic_id])
<
    query = subtopic.title
    language = @tile.language
    country = @tile.country
    url = build_api_query(query, language, country)
    response = parse_query(url)
    if response.nil?
      redirect_to topics_path
      flash[:alert] = "Sorry no results search again!"
      return
    end
    @tile.title = response["title"]
    @tile.summary = response["description"]
    @tile.content = response["content"]
    if @tile.picture_url.nil?
      @tile.picture_url = "https://cdn.mos.cms.futurecdn.net/FaWKMJQnr2PFcYCmEyfiTm.jpg"
    else
      @tile.picture_url = response["urlToImage"]
    end
    @tile.source = response["source"]["name"]
    @tile.author = response["author"]
    @tile.url = response["url"]
    @tile.subtopic = subtopic
    @tile.refresh_data

    if @tile.save!
      redirect_to tile_path(@tile)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_subtopic
    @subtopic = Subtopic.find(params[:subtopic_id])
  end

  def set_tile
    @tile = Tile.find(params[:id])
  end

  def tile_params
    params.require(:tile).permit(:subtopic, :language, :country)
  end


  def build_api_query(query, language, country)
    url = "https://newsapi.org/v2/top-headlines?q=#{query}&language=#{language}&country=#{country}&pageSize=1&apiKey=8d87341021534a57b58acbaf56e2aaaf"
  end

end

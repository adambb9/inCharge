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
    @subscription = current_user.subscriptions.find_by(tile: @tile)
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

    @tile.subtopic = subtopic

    #@backup_tile = Tile.create(title: "Scientists Map the Dark Matter Web Surrounding the Milky Way", summary: "A new simulation aims to determine whether the standard view of dark matter can explain how unique our galaxy’s neighborhood is.", content: "In the 1980s and ’90s, when Carlos Frenk worked on some of the first theories of cold dark matter—“cold” refers to the invisible particles’ relatively slow speed—he thought the idea wouldn’t last very long. He and his colleagues had already tested a theory of faster-moving 'hot' dark matter, the possibility that it is made of particles like neutrinos, and quickly ruled it out. Instead, the theory of cold dark matter became astrophysicists’ 'standard model' for two decades, a mantle it still carries. Now Frenk’s trying to poke holes in his cold dark-matter theory again. With a new simulation, he hopes to tackle open questions which may or may not be answered in the theory’s favor. 'That's how science works. One of my ambitions today is to shoot down the theory I’ve worked on,' says Frenk, an astrophysicist at Durham University in the United Kingdom.Frenk and his colleagues at Durham and in Helsinki, Finland, just completed the first part of a computer simulation of the dark-matter universe; it’s dubbed the Simulations Beyond the Local Universe project, or SIBELIUS, after the Finnish composer. The project was led by Stuart McAlpine and Till Sawala, both of whom previously conducted research with Frenk at Durham. Theirs isn’t just any dark-matter simulation, but one with galaxies modeled in it, providing a detailed, three-dimensional picture of what our galaxy and our corner of the universe likely looks like—if the standard view of cold dark matter is right. They published their new research this month.")
    #@backup_tile.picture_url = "https://cdn.eso.org/images/screen/eso0932a.jpg"
    #@backup_tile.url = "https://www.wired.com/story/scientists-map-the-dark-matter-web-surrounding-the-milky-way/"
    #@backup_tile.subtopic_id = 48
    @tile.refresh_data

    if @tile.title.nil?
      flash[:alert] = "Sorry no results search again!"
      redirect_to topics_path
    elsif @tile.save
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
    url = "https://newsapi.org/v2/top-headlines?q=#{query}&language=#{language}&country=#{country}&pageSize=1&apiKey="
  end

end

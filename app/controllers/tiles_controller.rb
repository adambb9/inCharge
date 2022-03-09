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


end

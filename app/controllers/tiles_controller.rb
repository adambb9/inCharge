class TilesController < ApplicationController
  before_action :set_tile, only: [:show]
  before_action :set_subtopic, only: [:index]
  def index
    @tiles = Tile.where(subtopic_id: params[:subtopic_id])
  end

  def show
  end

  private
  def set_subtopic
    @subtopic = Subtopic.find(params[:subtopic_id])
  end

  def set_tile
    @tile = Tile.find(params[:id])
  end
end

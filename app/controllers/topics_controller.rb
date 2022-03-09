class TopicsController < ApplicationController
  def index
    @tile = Tile.new
    @topics = Topic.all
  end
end

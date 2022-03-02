class SubscriptionsController < ApplicationController
  before_action :set_tile, only: [ :create]
  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
  end

  def show
  end

  def create
    @subscription = Subscription.new
    @subscription.user = current_user
    @subscription.tile = @tile
    if @subscription.save
      redirect_to subscriptions_path
    else
      redirect_to subtopic_tiles_path(@tile.subtopic_id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_tile
    @tile = Tile.find(params[:tile_id])
  end

  def set_subtopic
    @subtopic = Subtopic.find(params[:subtopic_id])
  end
end

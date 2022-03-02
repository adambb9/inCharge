class SubscriptionsController < ApplicationController
  before_action :set_tile, only: [ :create]
  before_action :set_subtopic, only: [ :create]
  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
  end

  def show
  end

  def create
    @subscription.user_id = current_user.id
    @subscritpion.tile_id = @tile.id
    if @subscription.save!
      redirect_to subscriptions_path
    else
      redirect_to subtopic_tiles(@subtopic)
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
    @tile = Tile.find(params[:id])
  end

  def set_subtopic
    @subtopic = Subtopic.find(params[:subtopic_id])
  end
end

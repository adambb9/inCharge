class SubscriptionsController < ApplicationController
  before_action :set_tile, only: [:new, :create]
  before_action :set_subtopic, only: [:new, :create]
  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription.user = current_user
    @subscritpion.tile = @tile
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

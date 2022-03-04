class SubscriptionsController < ApplicationController
  before_action :set_tile, only: [ :create]
  before_action :set_subscription, only: [ :destroy]
  def index
    autofill_subscriptions
    @subscriptions = Subscription.where(user_id: current_user.id)
  end

  def show
  end

  def autofill_subscriptions
    number_of_tiles = Tile.all.count
    subscriptions = Subscription.where(user_id: current_user.id).pluck(:id)
    available_tiles = Tile.all.pluck(:id)
    usable_tiles = available_tiles.reject {|w| subscriptions.include? w}
    if subscriptions.count < 10
      number_to_increase = 10 - subscriptions.count
      number_to_increase.times do
        subscription = Subscription.new
        id = usable_tiles.sample
        subscription.user = current_user
        subscription.tile = Tile.find(id)
        subscription.save!
      end
    end
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
    @subscription.destroy
    redirect_to topics_path
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  def set_tile
    @tile = Tile.find(params[:tile_id])
  end

  def set_subtopic
    @subtopic = Subtopic.find(params[:subtopic_id])
  end
end

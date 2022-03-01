class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
  end

  def show
  end
end

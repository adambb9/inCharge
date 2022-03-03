class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :tile

  #validates :user_id, uniqueness: { scope: :tile_id }
end

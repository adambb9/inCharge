class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :tile


  validates_uniqueness_of :user, scope: :tile

end

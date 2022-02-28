class Subtopic < ApplicationRecord
  belongs_to :subscription
  belongs_to :topic
end

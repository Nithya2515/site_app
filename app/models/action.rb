class Action < ApplicationRecord
  belongs_to :plot
  belongs_to :category
  # belongs_to :observation
end

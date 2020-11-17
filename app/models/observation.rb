class Observation < ApplicationRecord
  belongs_to :plot
  has_many_attached :files
  has_many :actions
  accepts_nested_attributes_for :actions, :allow_destroy => true
end

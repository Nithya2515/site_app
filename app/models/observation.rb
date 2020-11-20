class Observation < ApplicationRecord
  belongs_to :plot
  has_many :file_elements
  has_many :actions, dependent: :destroy
  accepts_nested_attributes_for :actions

end

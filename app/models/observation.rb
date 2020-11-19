class Observation < ApplicationRecord
  belongs_to :plot
  has_many_attached :files
  has_many :actions, dependent: :destroy
  accepts_nested_attributes_for :actions

def due_date_update
  binding.pry
end

end

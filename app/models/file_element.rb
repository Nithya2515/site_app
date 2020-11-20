class FileElement < ApplicationRecord
  belongs_to :observation
  has_one_attached :file

end

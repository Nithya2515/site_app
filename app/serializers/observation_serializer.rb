class ObservationSerializer < ActiveModel::Serializer
  has_many :actions
  has_many :file_elements
  attributes :id, :title, :description, :plot_id
end

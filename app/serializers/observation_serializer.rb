class ObservationSerializer < ActiveModel::Serializer
  has_many :actions
  attributes :id, :title, :description, :plot_id
end

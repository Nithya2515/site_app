class MemberSerializer < ActiveModel::Serializer
  attributes :id, user_ids: []
end

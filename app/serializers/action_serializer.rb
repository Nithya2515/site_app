class ActionSerializer < ActiveModel::Serializer
  attributes :id,:action_description, :observation_id, :status, :due_date, :users_ids
  belongs_to :plot
  has_many :members
  
#  def due_date
#    (object.created_at).to_date + 2.days
#  end
 

  def users_ids
    object.member_ids
  end

end

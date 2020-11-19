class Action < ApplicationRecord
  belongs_to :plot, optional: true
  belongs_to :category, optional: true
  has_many :members
  enum status: { over_due: 2, complete: 1, pending: 0 }
  # belongs_to :observation

  def action_overdue
    actions = Action.where(status: 'pending').where('due_date < ?', Date.today)
    actions.each do |action|
      action.over_due!
    end
  end
  handle_asynchronously :action_overdue

end

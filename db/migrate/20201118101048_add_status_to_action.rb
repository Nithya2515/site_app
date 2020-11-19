class AddStatusToAction < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :status, :integer, default: 0
    add_column :actions, :due_date, :datetime
  end
end

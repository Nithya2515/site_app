class AddObservationToActions < ActiveRecord::Migration[5.2]
  def change
    add_reference :actions, :observation, foreign_key: true
  end
end

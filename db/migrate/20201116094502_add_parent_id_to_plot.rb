class AddParentIdToPlot < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :parent_id, :integer
  end
end

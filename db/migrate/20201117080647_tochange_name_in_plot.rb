class TochangeNameInPlot < ActiveRecord::Migration[5.2]
  def change
    rename_column :plots, :name, :plot_name
  end
end

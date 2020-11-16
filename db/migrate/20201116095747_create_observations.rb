class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.string :title
      t.text :description
      t.belongs_to :plot

      t.timestamps
    end
  end
end

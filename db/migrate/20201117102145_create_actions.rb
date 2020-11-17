class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :action_description
      t.belongs_to :plot
      t.belongs_to :category


      t.timestamps
    end
  end
end

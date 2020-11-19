class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      
      t.belongs_to :action
      t.belongs_to :user

      t.timestamps
    end
  end
end

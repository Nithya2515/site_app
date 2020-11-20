class CreateFileElements < ActiveRecord::Migration[5.2]
  def change
    create_table :file_elements do |t|
      t.references :observation, foreign_key: true

      t.timestamps
    end
  end
end

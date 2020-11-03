class CreateRailsTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :rails_texts do |t|
      t.string :genre
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end

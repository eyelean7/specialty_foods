class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.string :content
      t.string :author
      t.belongs_to :story, index: true
      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end

class DropImageTableAndAddImageColumnToSentences < ActiveRecord::Migration[5.1]
  def change
    drop_table(:images)

    add_column(:sentences, :image, :string)
  end
end

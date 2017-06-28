class RemoveImageIdColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:sentences, :image_id)
  end
end

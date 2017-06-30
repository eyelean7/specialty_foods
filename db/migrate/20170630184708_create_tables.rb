class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.string :country_of_origin

      t.timestamps
    end
    create_table :reviews do |t|
      t.string :author
      t.string :content_body
      t.integer :rating

      t.timestamps
    end
  end
end

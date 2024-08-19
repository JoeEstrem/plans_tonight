class CreateBars < ActiveRecord::Migration[7.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :mood
      t.string :price
      t.boolean :smoking
      t.boolean :food
      t.string :alcohol
      t.float :latitude
      t.float :longitude
      t.string :url

      t.timestamps
    end
  end
end

class CreatePolls < ActiveRecord::Migration[7.1]
  def change
    create_table :polls do |t|
      t.boolean :accepted
      t.string :mood
      t.string :price
      t.boolean :smoking
      t.boolean :food
      t.string :alcohol
      t.references :user, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end

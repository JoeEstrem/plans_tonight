class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.date :date_time
      t.date :deadline
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.references :bar, foreign_key: true

      t.timestamps
    end
  end
end

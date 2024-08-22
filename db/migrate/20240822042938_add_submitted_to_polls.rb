class AddSubmittedToPolls < ActiveRecord::Migration[7.1]
  def change
    add_column :polls, :submitted, :boolean
  end
end

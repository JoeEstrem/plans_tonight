class AddLocationToBars < ActiveRecord::Migration[7.1]
  def change
    add_column :bars, :location, :string
  end
end

class AddStatusToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :status, :string
  end
end

class ChangeDeadlineToDatetimeInPlans < ActiveRecord::Migration[7.1]
  def up
    change_column :plans, :deadline, :datetime
  end
  def down
    change_column :plans, :deadline, :date
  end
end

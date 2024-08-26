class ChangeDateTimeToDatetimeInPlans < ActiveRecord::Migration[7.1]
  def up
    change_column :plans, :date_time, :datetime
  end
  def down
    change_column :plans, :date_time, :date
  end
end

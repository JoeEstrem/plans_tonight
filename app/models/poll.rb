class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  # validates :mood, presence: true
  # validates :alcohol, presence: true
  # validates :smoking, inclusion: { in: [true, false] }
  # validates :food, inclusion: { in: [true, false] }
  validates :submitted, inclusion: { in: [true, false] }
  validates :user, uniqueness: { scope: :plan }


  def filled?
    submitted == true
  end

  after_update_commit :broadcast_poll

  private

  def broadcast_poll
    broadcast_append_to "plan_#{plan.id}_polls",
                        partial: "shared/waiting_show",
                        locals: { poll: self }
  end
end

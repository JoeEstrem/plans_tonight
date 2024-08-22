class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates :mood, presence: true
  validates :alcohol, presence: true
  validates :smoking, inclusion: { in: [true, false] }
  validates :food, inclusion: { in: [true, false] }


end

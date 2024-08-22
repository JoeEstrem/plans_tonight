class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :bar, optional: true
  has_many :polls, dependent: :destroy
  has_many :users, through: :polls
  accepts_nested_attributes_for :polls, allow_destroy: true

  validates :date_time, presence: true

  enum status: { pending: 'pending', done: 'done', past: 'past'}

  scope :past, -> { where(status: :past) }
  scope :pending, -> { where(status: :pending) }
  scope :done, -> { where(status: :done) }

  def all_polls_filled?
    polls.all?(&:filled?)
  end
end

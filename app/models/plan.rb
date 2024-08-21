class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :bar, optional: true
  has_many :polls, dependent: :destroy
  accepts_nested_attributes_for :polls, allow_destroy: true
end

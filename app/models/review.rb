class Review < ApplicationRecord
  belongs_to :course
  belongs_to :user
  # has_one :user
  validates :rating, :comment, presence: true
end

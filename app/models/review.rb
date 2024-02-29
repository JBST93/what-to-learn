class Review < ApplicationRecord
  belongs_to :course
  has_one :user
  validates :rating, :comment, presence: true
end

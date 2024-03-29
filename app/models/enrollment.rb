class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :user, presence: true, uniqueness: { scope: :course }
end

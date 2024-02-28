class Course < ApplicationRecord
  belongs_to :user, foreign_key: 'course_creator_id'
  has_many :enrollments, dependent: :destroy
  has_many :users, through: :enrollments
  has_one_attached :image

  validates :title, :start_date, :end_date, :coordinates, :price, presence: true
end

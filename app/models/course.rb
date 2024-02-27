class Course < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, :start_date, :end_date, :price, presence: true
end
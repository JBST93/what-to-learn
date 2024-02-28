class Course < ApplicationRecord
  belongs_to :user
  has_many :enrollments, dependent: :destroy
  has_one_attached :image

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :title, :start_date, :end_date, :price, presence: true
end

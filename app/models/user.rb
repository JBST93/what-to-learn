class User < ApplicationRecord
  has_one_attached :avatar
  has_one :creditcard
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates :role, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:student, :instructor]

  has_many :messages, :class_name => 'Message', :foreign_key => 'sender_id'
  has_many :messages, :class_name => 'Message', :foreign_key => 'recipient_id'
  has_many :reviews
end

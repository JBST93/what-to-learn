class AddCourseToReview < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :course, null: false, foreign_key: true

  end
end

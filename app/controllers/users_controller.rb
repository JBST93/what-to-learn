class UsersController < ApplicationController
  def my_courses
    @my_courses = Enrollment.where(user: current_user)
  end
end

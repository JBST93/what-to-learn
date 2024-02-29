class UsersController < ApplicationController
  def my_enrollments
    @my_enrollments = Enrollment.where(user: current_user)
    @courses = current_user.courses
    respond_to do |format|
      format.html
      format.json { render json: @courses }
    end
    @my_courses = Course.where(user: current_user)
  end

  def profile
  end
end

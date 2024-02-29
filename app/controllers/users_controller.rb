class UsersController < ApplicationController
  def my_enrollments
    @my_enrollments = Enrollment.where(user: current_user)

    @user = current_user
    @courses = @user.courses
    respond_to do |format|
      format.html
      format.json { render json: @courses }
    end
  end
end

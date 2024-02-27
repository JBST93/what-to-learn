class UsersController < ApplicationController
  def my_courses
    @my_courses = Enrollment.where(user: current_user)
    raise
  end

  private

  def user_params
    # params.require(:user).permit(:id)
  end
end

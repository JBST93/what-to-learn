class UsersController < ApplicationController
  def my_enrollments
    @my_enrollments = Enrollment.where(user: current_user)
  end
end

class UsersController < ApplicationController
  def my_enrollments
    @my_enrollments = Enrollment.where(user: current_user)

    enrollments = current_user.enrollments
    events = enrollments.map { |enrollment| { title: enrollment.course.title, start_date: enrollment.course.start_date } }
    # render json: events
  end

  def profile
  end
end

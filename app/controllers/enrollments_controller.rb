class EnrollmentsController < ApplicationController
  # before_action :set_course, only: [:new, :create]

  def new
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new
    @enrollment.course = @course
    @enrollment.user = current_user
  end

  def create
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.user = current_user
    if @enrollment.save
      flash.alert = "Enrolled"
    end
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def enrollment_params
    params.require(:enrollment).permit(:course_id)
  end
end

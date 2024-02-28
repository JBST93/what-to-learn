class EnrollmentsController < ApplicationController
  before_action :set_course, only: [:new, :create]

  def new
    @enrollment = Enrollment.new
    @enrollment.course = @course
    @enrollment.user = current_user
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.course = @course
    @enrollment.user = current_user
    if @enrollment.save
      redirect_to course_path(@course)
    else
      render :new, status: :unprocessable_entity
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

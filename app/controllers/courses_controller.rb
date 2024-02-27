class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user

    if @course.save
      redirect_to course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @course = Course.update(course_params)

    redirect_to course_path(@course)
  end

  def destroy
    @course.destroy

    redirect_to courses_path, status: :see_other
  end

  private

  def course_params
    params.require(:course).permit(:title,
                                   :description,
                                   :start_date,
                                   :end_date,
                                   :price,
                                   :active,
                                   :tag,
                                   :text_editor,
                                   :user_id)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end

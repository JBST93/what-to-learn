class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @courses = Course.all
  if params[:query].present?

    sql_query = <<~SQL
    courses.title ILIKE :query
    OR courses.description ILIKE :query
    SQL

    @courses = @courses.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @marker = {lat: @course.latitude, lng: @course.longitude}
  end

  def new
    @course = Course.new
    @course.user = current_user
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

  def edit
    @course.user == current_user
  end

  def update
    if @course.user == current_user
      @course.update(course_params)
      redirect_to course_path(@course)
    else
      redirect_to courses_path
    end
  end

  def destroy
    @course.delete
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
                                   :user_id,
                                   :bio,
                                   :address)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end

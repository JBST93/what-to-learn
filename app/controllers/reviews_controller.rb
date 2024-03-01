class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.course = Course.find(params[:course_id])
    @review.user = current_user
    if @review.save
      redirect_to course_path(@review.course)
    else
      @course = Course.find(params[:course_id])
      render template: "courses/show", course: @course, status: :unprocessable_entity
    end
  end

  def average
    # if sum / count
    # end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end

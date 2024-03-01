class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.course_id = params[:course_id]
    @review.save
    redirect_to course_path(@review.course)
  end

  # def average
  #   sum / count
  # end

end

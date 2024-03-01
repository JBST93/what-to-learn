class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @courses = Course.all
    if params[:query].present?

      sql_query = <<~SQL
      courses.title ILIKE :query
      OR courses.description ILIKE :query
      SQL

      @courses = @courses.where(sql_query, query: "%#{params[:query]}%")
      end
  end
end

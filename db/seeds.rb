# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Course.create!(title: "LLMs", description: "Course description", start_date: Date.parse("16th March 2024"), end_date: Date.parse("16th April 2024"), price: 399.99, user_id: 1, tag: "AI")

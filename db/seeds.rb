# This file should ensure the existence of records required to run the application in every environment {production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command {or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!{name: genre_name)
#   end

require 'faker'

puts "Seeding the DB.. "

# Enrollment.destroy_all
User.destroy_all
Course.destroy_all

puts "I cleaned the DB"

# Students
User.create!([
  { first_name: "Alan", last_name: "Rodriguez", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Marco", last_name: "Ricci", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Ben", last_name: "Claren", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Dez", last_name: "Hastrup", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Ebitari", last_name: "Alaibe", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Hamed", last_name: "Aljamry", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Jake", last_name: "Pople", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Jasper", last_name: "Warmenhoven", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Louis", last_name: "Mellac", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Louis", last_name: "Leslie", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Louise", last_name: "Stone", email: "alice@school.com", role: "student", encrypted_password: "password" },
  { first_name: "Lucien", last_name: "George", email: "alice@school.com", role: "student", encrypted_password: "password" }
])

# courses = Course.create! [
#   [
#     title: "Introduction to Programming",
#     description: "Learn the basics of programming.",
#     start_date: Date.today,
#     end_date: Date.today + 3.months,
#     price: 100.00,
#     user_id: teacher.id, # Associate course with the teacher
#     active: true,
#     tag: "Programming",
#     text_editor: "<p>This is a course for beginners.</p>",
#     address: "138 Kingsland Road, London, E2 8DY"
#   ],


# end

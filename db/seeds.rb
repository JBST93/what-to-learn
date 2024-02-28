# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "Seeding the DB.. "

Enrollment.destroy_all
Course.destroy_all
User.destroy_all

puts "I cleaned the DB"

20.times do
  student = User.create!(
    email: Faker::Internet.unique.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: 'student'
  )
  puts "Student #{student.first_name} has been added to the DB"
end

3.times do
  teacher = User.create!(
    email: Faker::Internet.unique.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: 'teacher'
  )

  puts "Teacher #{teacher.first_name} has been added to the DB"
end

4.times do
  course = Course.create!(
    title: Faker::Educator.course_name,
    description: Faker::Lorem.paragraph(sentence_count: 4),
    start_date: Faker::Date.between(from: Date.today, to: 1.month.from_now),
    end_date: Faker::Date.between(from: 1.month.from_now, to: 3.months.from_now),
    price: Faker::Number.decimal(l_digits: 2),
    user_id: User.pluck(:id).sample,
    active: true,
    tag: Faker::Lorem.word,
    text_editor: Faker::Lorem.paragraph(sentence_count: 2)
  )
  puts "Course #{course.title} has been added to the DB"

end

15.times do
  booking = Enrollment.create!(
    user: User.all.sample,
    course: Course.all.sample,
  )

  puts "#{booking.user.first_name} has enrolled in #{booking.course.title}"
end

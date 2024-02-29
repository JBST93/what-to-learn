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
Creditcard.destroy_all
Course.destroy_all
User.destroy_all
Review.destroy_all

puts "I cleaned the DB"

# Students
users = User.create!([
  { first_name: "Alan", last_name: "Rodriguez", email: "alan@school.com", role: "Instructor", password: "password" },
  { first_name: "Marco", last_name: "Ricci", email: "marco@school.com", role: "Instructor", password: "password" },
  { first_name: "Ben", last_name: "McLaren", email: "ben@school.com", role: "Instructor", password: "password" },
  { first_name: "Dez", last_name: "Hastrup", email: "dez@school.com", role: "Instructor", password: "password" },
  { first_name: "Ebitari", last_name: "Alaibe", email: "ebitari@school.com", role: "Instructor", password: "password" },
  { first_name: "Hamed", last_name: "Aljamry", email: "hamed@school.com", role: "Instructor", password: "password" },
  { first_name: "Jake", last_name: "Pople", email: "jake@school.com", role: "Instructor", password: "password" },
  { first_name: "Jasper", last_name: "Warmenhoven", email: "jasper@school.com", role: "Instructor", password: "password" },
  { first_name: "Louis", last_name: "Mellac", email: "louis@school.com", role: "Instructor", password: "password" },
  { first_name: "Louis", last_name: "Leslie", email: "louisl@school.com", role: "Instructor", password: "password" },
  { first_name: "Louise", last_name: "Stone", email: "louise@school.com", role: "Instructor", password: "password" },
  { first_name: "Lucien", last_name: "George", email: "lucien@school.com", role: "Instructor", password: "password" }
])

20.times do
  user = User.new(
    first_name:    Faker::Name.name,
    last_name:    Faker::Name.name,
    email:        Faker::Internet.email,
    password: "password",
    role:  "student"
  )
  user.save!
end

puts "students"


courses = Course.create!([
  {  title: "Learn the basics of Python", description: "Learn the basics of Python in this 3 month crash course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "Python", text_editor: "<p>Python is a versatile and widely-used programming language known for its readability and straightforward syntax, making it an excellent choice for beginners and seasoned developers alike. It serves as a foundation for a variety of applications, from web development to data analysis, machine learning, and beyond. With its powerful standard libraries and extensive support from an active community, Python enables developers to implement complex functionalities with minimal code, enhancing productivity and innovation. Whether you're looking to dive into software development, automate tasks, or explore the realms of artificial intelligence, learning the basics of Python provides a solid stepping stone to mastering the skills needed to tackle modern computing challenges</p>", address: "138 Kingsland Road, London, E2 8DY" },

  {  title: "Learn the basics of Ruby", description: "Learn Ruby in this 3 month crash course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "Ruby", text_editor: "<p>Ruby is an elegant and powerful programming language renowned for its simplicity and productivity. It's the foundation of the Ruby on Rails web framework, which revolutionized web development with its convention over configuration approach. Ruby's clear syntax and dynamic typing make it an ideal language for beginners, yet it's robust enough for complex software engineering tasks. With a strong focus on developer happiness and a vibrant community, Ruby offers extensive libraries and tools, facilitating rapid development of web applications, automation scripts, data processing, and more. Learning Ruby not only opens the door to modern web development but also instills programming practices that prioritize readability, maintainability, and efficient code writing, making it a cherished tool among developers worldwide.</p>", address: "1 St Giles High St
  , London, WC2H 8AG" },

  {  title: "Learn mid-level Javascript", description: "Learn Javascript in this 3 month intensive course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "Javascript", text_editor: "<p>JavaScript stands as the backbone of modern web development, powering dynamic and interactive elements across websites and applications. Initially designed to breathe life into static web pages, it has evolved into a versatile and essential language for both frontend and backend development, thanks to Node.js. With its event-driven nature and support for asynchronous programming, JavaScript enables the creation of smooth, user-friendly experiences in web browsers, mobile apps, and even desktop applications. Its ubiquity across development environments and the vast ecosystem of libraries and frameworks—such as React, Angular, and Vue.js—make mastering JavaScript a crucial step for any aspiring developer. By learning the basics of JavaScript, you unlock the potential to build engaging, responsive, and high-performing applications, marking a critical milestone in the journey of modern web and software development.</p>", address: "807 Wandsworth Rd, London, SW8 3JH" },

  {  title: "Beginners Ruby on Rails", description: "Learn Ruby on Rails in this 3 month intensive course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "Ruby on Rails", text_editor: "<p>JavaScript stands as the backbone of modern web development, powering dynamic and interactive elements across websites and applications. Initially designed to breathe life into static web pages, it has evolved into a versatile and essential language for both frontend and backend development, thanks to Node.js. With its event-driven nature and support for asynchronous programming, JavaScript enables the creation of smooth, user-friendly experiences in web browsers, mobile apps, and even desktop applications. Its ubiquity across development environments and the vast ecosystem of libraries and frameworks—such as React, Angular, and Vue.js—make mastering JavaScript a crucial step for any aspiring developer. By learning the basics of JavaScript, you unlock the potential to build engaging, responsive, and high-performing applications, marking a critical milestone in the journey of modern web and software development.</p>", address: "178 Epson Road, London, E1 3EY" },

  {  title: "Learn mid-level Ruby on Rails", description: "Learn Ruby on Rails in this 3 month intensive course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "Ruby on Rails", text_editor: "<p>Ruby on Rails, often simply Rails, is a powerful web application framework that follows the model-view-controller (MVC) architecture, enabling developers to build sophisticated web applications with ease and efficiency. Built on top of the Ruby programming language, Rails emphasizes convention over configuration (CoC) and the DRY (Don't Repeat Yourself) principle, which together streamline the development process by reducing the amount of boilerplate code developers need to write. Its comprehensive ecosystem includes built-in support for database integration, web services, and web pages, making it an ideal choice for rapid application development.</p>", address: "3 Kings Road, London, E6 2DP" },

  {  title: "Learn advanced Python", description: "Learn Python in this 1 month course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "Python", text_editor: "<p>Python is a versatile and widely-used programming language known for its readability and straightforward syntax, making it an excellent choice for beginners and seasoned developers alike. It serves as a foundation for a variety of applications, from web development to data analysis, machine learning, and beyond. With its powerful standard libraries and extensive support from an active community, Python enables developers to implement complex functionalities with minimal code, enhancing productivity and innovation.</p>", address: "45 Channing Street, London, E1 3FR" },

  {  title: "Learn advanced HTML, CSS & Bootstrap", description: "Learn HTML, CSS & Bootstrap in this 2 month course.", start_date: Date.today, end_date: Date.today + 3.months,  price: rand(100..2050)-1, course_creator_id: users.sample.id, active: true, tag: "HTML, CSS & Bootstrap", text_editor: "<p>HTML, CSS, and Bootstrap form a powerful trio in the world of web development, enabling developers and designers to create visually appealing and responsive websites with ease. HTML lays the foundation, structuring web content through elements and tags, while CSS adds style, presenting the HTML in visually dynamic ways with colors, fonts, and layouts. Bootstrap, a popular CSS framework, accelerates the design process by providing a comprehensive set of pre-designed components and grid systems. This allows for rapid, consistent styling across different browsers and devices, making web development more efficient. By mastering HTML, CSS, and Bootstrap, developers can quickly turn ideas into reality, crafting responsive, mobile-first websites that stand out in today’s digital landscape.</p>", address: "49 Ewing Road Street, London, E6 3HH" }
  ])

  puts "descriptions"


  reviews = Review.create!([
  { rating: "3", comment: "The course was an enlightening journey into programming logic and clear syntax. Highly recommend for everyone.", course_id: courses.sample.id },
  { rating: "5", comment: "The depth of content and practical projects in the Rails course is unmatched. Great for aspiring developers", course_id: courses.sample.id },
  { rating: "3", comment: "Engaging and thorough, the course equipped me with the skills needed to excel in my tech career", course_id: courses.sample.id },
  { rating: "3", comment: "Learning everything through this course was pivotal; it's clear, concise, and incredibly practical", course_id: courses.sample.id },
  { rating: "4", comment: "The depth of content and practical projects in the Rails course is unmatched. Great for aspiring developers", course_id: courses.sample.id },
  { rating: "3", comment: "Best career decision I've made", course_id: courses.sample.id },
  { rating: "3", comment: "Best career decision I've made", course_id: courses.sample.id },
  { rating: "3", comment: "Best career decision I've made", course_id: courses.sample.id },
  { rating: "3", comment: "Best career decision I've made", course_id: courses.sample.id },
  { rating: "3", comment: "Best career decision I've made", course_id: courses.sample.id },
  { rating: "5", comment: "It was very intense but I now feel able to apply for tech jobs", course_id: courses.sample.id }
])


# 20.times do
#   Review.create(
#     rating: rand(1..5),
#     comment: Faker::Lorem.paragraph(sentence_count: 1),
#     course: courses.sample
#   )
# end

puts "Created 20 fake reviews."

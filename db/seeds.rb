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
  { first_name: "Alan", last_name: "Rodriguez", email: "alan@school.com", role: "instructor", password: "password" },
  { first_name: "Marco", last_name: "Ricci", email: "marco@school.com", role: "instructor", password: "password" },
  { first_name: "Ben", last_name: "McLaren", email: "ben@school.com", role: "instructor", password: "password" },
  { first_name: "Deji", last_name: "Hastrup", email: "dez@school.com", role: "instructor", password: "password" },
  { first_name: "Ebitari", last_name: "Alaibe", email: "ebitari@school.com", role: "instructor", password: "password" },
  { first_name: "Hamed", last_name: "Aljamry", email: "hamed@school.com", role: "instructor", password: "password" },
  { first_name: "Jake", last_name: "Pople", email: "jake@school.com", role: "instructor", password: "password" },
  { first_name: "Jasper", last_name: "Warmenhoven", email: "jasper@school.com", role: "instructor", password: "password" },
  { first_name: "Louis", last_name: "Leslie", email: "louisl@school.com", role: "instructor", password: "password" },
  { first_name: "Louise", last_name: "Stone", email: "louise@school.com", role: "instructor", password: "password" },
  { first_name: "Lucien", last_name: "George", email: "lucien@school.com", role: "instructor", password: "password" }
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
  {  title: "Become a master in Data Structures and Algorithms", description: "Gain mastery in data structures and algorithms through a comprehensive course covering the fundamental principles.", start_date: Date.today + 7.days, end_date: Date.today + 3.months,  price: 299.99, course_creator_id: users.sample.id, active: true, tag: "Data Science", text_editor: "This comprehensive course is designed to equip you with the essential knowledge and skills needed to become a proficient master in data structures and algorithms. Whether you're a beginner or an experienced programmer looking to enhance your expertise, this course will guide you through a structured learning path to mastery.

  Throughout the course, you will delve deep into the fundamental principles of data structures and algorithms, gaining a thorough understanding of their importance in computer science and software development. Starting from the basics, you will learn about various data structures such as arrays, linked lists, stacks, queues, trees, heaps, graphs, and hash tables. You will explore their characteristics, operations, and implementations, along with analyzing their time and space complexities.

  In addition to understanding data structures, you will also master various algorithmic techniques and strategies. You will learn how to design and analyze algorithms for sorting, searching, graph traversal, dynamic programming, and more. Through hands-on exercises and coding challenges, you will gain practical experience in implementing these algorithms efficiently in real-world scenarios.

  Moreover, the course will cover advanced topics such as algorithm optimization, algorithmic problem-solving techniques, and common algorithm design paradigms like divide and conquer, greedy algorithms, and dynamic programming. You will also learn how to tackle complex algorithmic problems and how to approach algorithmic competitions and coding interviews effectively.

  By the end of this course, you will have developed a solid foundation in data structures and algorithms, enabling you to solve complex computational problems with confidence and efficiency. Whether you aspire to excel in software development, pursue academic research, or succeed in technical interviews, this course will empower you with the knowledge and skills needed to achieve your goals as a master in data structures and algorithms.", address: "1600 Pennsylvania Ave NW, Washington, DC 20500, United States" },

  {  title: "Learn Product Management in the age of AI", description: "Master the art of product management in the era of artificial intelligence, from leveraging AI technologies to drive innovation to optimizing product performance for the digital age", start_date: Date.today + 15.days, end_date: Date.today + 5.months,  price: 349, course_creator_id: users.sample.id, active: true, tag: "Product AI", text_editor: "In this cutting-edge course, you will embark on a transformative journey to understand the intersection of product management and artificial intelligence (AI). With AI revolutionizing industries across the globe, product managers need to adapt and harness the power of AI to drive innovation, enhance user experiences, and create disruptive products. This comprehensive course will equip you with the knowledge, skills, and strategies to navigate the complexities of product management in the age of AI. From understanding the fundamentals of AI technologies to leveraging data-driven insights for product development and strategic decision-making, you will learn how to integrate AI seamlessly into every stage of the product lifecycle. Through real-world case studies, hands-on exercises, and expert insights, you will gain practical experience in identifying AI opportunities, defining product requirements, prioritizing features, and optimizing product performance. Whether you're a seasoned product manager looking to stay ahead of the curve or a newcomer eager to explore the limitless possibilities of AI-driven product innovation, this course will empower you to lead with confidence in shaping the future of product management.", address: "10 Downing Street, Westminster, London SW1A 2AA, United Kingdom" },

  {  title: "Advanced Photography Techniques Workshop", description: "Enhance your photography skills with advanced techniques in composition, lighting, and post-processing", start_date: Date.today + 2.months, end_date: Date.today + 6.months,  price: 599.99, course_creator_id: users.sample.id, active: true, tag: "Photography", text_editor: " Join our immersive Advanced Photography Techniques Workshop tailored for intermediate to advanced photographers seeking to refine their craft. Over the course of twelve weeks, you'll delve into the intricacies of composition theory, lighting principles, and advanced post-processing techniques. Through a combination of interactive lectures, hands-on shooting sessions, and constructive critiques, you'll deepen your understanding of visual storytelling and learn how to create compelling images that resonate with viewers on a profound level. Explore the nuances of different photographic genres, from portrait and landscape photography to street and documentary photography, and discover how to infuse your work with authenticity and emotion. Additionally, you'll explore the ethical considerations and responsibilities of image-making in today's digital age, addressing issues such as image manipulation, representation, and consent. By the end of the workshop, you'll emerge as a more confident and versatile photographer, equipped with the skills and insights to navigate the complexities of the contemporary photographic landscape with creativity and integrity", address: "1 Chome-1-1 Oshiage, Sumida City, Tokyo 131-0045, Japan" },

  {  title: "Mastering Culinary Arts: Chef's Immersion Program", description: "Immerse yourself in the world of culinary arts, mastering techniques from knife skills to gourmet plating", start_date: Date.today + 3.days, end_date: Date.today + 4.months,  price: 199.99, course_creator_id: users.sample.id, active: true, tag: "Cooking", text_editor: "Embark on a transformative culinary journey with our immersive Chef's Immersion Program designed for aspiring chefs and culinary enthusiasts alike. Spanning twenty weeks, this comprehensive program offers a deep dive into the art and science of cooking, from mastering fundamental techniques to exploring advanced culinary concepts. Under the guidance of our esteemed culinary instructors, you'll learn the principles of flavor development, menu design, and kitchen management, while honing your culinary creativity through hands-on cooking labs and creative challenges.

  Engage with industry professionals through guest lectures, culinary demonstrations, and field trips to local farms, markets, and restaurants, gaining insight into the latest culinary trends and practices shaping the industry. Additionally, you'll explore the cultural and historical contexts of various cuisines, broadening your culinary repertoire and deepening your appreciation for global gastronomy. Whether you aspire to launch your own restaurant, pursue a career as a professional chef, or simply elevate your home cooking skills, this program provides the comprehensive training and mentorship needed to succeed in the dynamic world of culinary arts", address: "5 Avenue Anatole France, 75007 Paris, France" },

  {  title: "Yoga Retreat: Mindfulness and Wellness", description: "Rejuvenate your mind and body with a serene yoga retreat focusing on mindfulness and holistic wellness.", start_date: Date.today + 2.weeks, end_date: Date.today + 4.months,  price: 149.99, course_creator_id: users.sample.id, active: true, tag: "Wellness", text_editor: "Escape the stresses of modern life and embark on a transformative Yoga Retreat nestled in the tranquil embrace of nature. Over the course of four weeks, you'll immerse yourself in a holistic wellness journey designed to nourish your body, mind, and spirit. Each day begins with sunrise yoga sessions, allowing you to awaken your senses and cultivate a deep sense of presence and mindfulness. Throughout the retreat, experienced yoga instructors will guide you through a variety of yoga styles, meditation practices, and breathwork techniques, empowering you to develop a sustainable and enriching yoga practice tailored to your individual needs.

  In addition to daily yoga sessions, you'll have the opportunity to participate in wellness workshops covering topics such as nutrition, stress management, and self-care rituals, providing you with practical tools and insights to support your overall well-being. Nourish yourself with nourishing, plant-based meals prepared with locally sourced ingredients, and connect with like-minded individuals in a supportive and nurturing community environment. Whether you're seeking to deepen your yoga practice, recharge your batteries, or embark on a journey of self-discovery, this retreat offers a sanctuary for holistic healing and transformation", address: "0 Piazza di Trevi, 00187 Rome, Italy" },

  {  title: "Mastering Mixology: Craft Cocktails Workshop", description: "Elevate your bartending skills with a hands-on workshop exploring the art of crafting signature cocktails", start_date: Date.today - 15.days, end_date: Date.today - 8.days,  price: 89.99, course_creator_id: users.sample.id, active: false, tag: "Mixology", text_editor: "Shake up your bartending repertoire and embark on a spirited journey into the world of mixology with our immersive Craft Cocktails Workshop. Over the span of twelve weeks, you'll dive deep into the art and science of cocktail crafting, from classic cocktails to innovative concoctions. Led by expert mixologists and beverage professionals, you'll learn essential techniques such as spirit selection, flavor balancing, and cocktail presentation, while also gaining insight into the history and cultural significance of various cocktail traditions. Through hands-on cocktail labs, interactive tastings, and behind-the-bar experiences, you'll hone your bartending skills and develop the confidence to create unique and memorable cocktails that delight the senses.

  Additionally, you'll explore the business side of bartending, covering topics such as inventory management, menu design, and customer service, equipping you with the knowledge and skills to excel in the competitive world of hospitality. Whether you aspire to become a professional bartender, enhance your career in the hospitality industry, or simply elevate your home bartending skills, this workshop provides the comprehensive training and mentorship needed to succeed in the dynamic and ever-evolving field of mixology.", address: "20th Street & Constitution Ave NW, Washington, DC 20551, United States" },

  {  title: "Digital Marketing & Sales Bootcamp", description: "Gain practical insights and strategies to excel in digital marketing, from social media to SEO", start_date: Date.today - 5.months, end_date: Date.today - 2.months,  price: 629.99, course_creator_id: users.sample.id, active: false, tag: "Digital Marketing", text_editor: "Propel your career in digital marketing to new heights with our immersive Digital Marketing Bootcamp tailored for marketing professionals, entrepreneurs, and aspiring digital marketers. Over the span of sixteen weeks, you'll embark on a comprehensive exploration of the digital marketing landscape, from foundational principles to advanced strategies and tactics. Led by industry experts with years of hands-on experience, this bootcamp covers essential digital marketing disciplines, including search engine optimization (SEO), social media marketing, email marketing, content marketing, and paid advertising.

  Through a combination of interactive lectures, case studies, workshops, and real-world projects, you'll acquire the skills and knowledge needed to create and execute effective digital marketing campaigns that drive measurable results for your business or clients. Dive deep into the latest tools and technologies shaping the digital marketing industry, and gain practical experience in leveraging data analytics and marketing automation to optimize campaign performance and ROI. Additionally, you'll explore emerging trends and best practices in digital marketing, from influencer marketing and conversational marketing to voice search optimization and AI-driven marketing strategies, ensuring you stay ahead of the curve in this rapidly evolving field. Whether you're looking to advance your career, launch your own business, or expand your digital marketing skill set, this bootcamp provides the comprehensive training and mentorship needed to succeed in today's competitive digital landscape", address: "221B Baker St, Marylebone, London NW1 6XE, United Kingdom" },

  {  title: "Creative Writing Workshop: Unlock Your Imagination", description: "Explore the art of storytelling and unleash your creativity in a dynamic writing workshop", start_date: Date.today + 1.month, end_date: Date.today + 4.months,  price: 999.99, course_creator_id: users.sample.id, active: true, tag: "Writing", text_editor: "Embark on a transformative journey of self-expression and creativity with our Creative Writing Workshop designed for writers of all levels. Over the course of twelve weeks, you'll immerse yourself in the craft of storytelling, exploring various genres, techniques, and narrative structures. Through interactive writing exercises, group discussions, and personalized feedback from experienced writers, you'll develop the skills and confidence to bring your ideas to life on the page. From character development and plot construction to setting and dialogue, you'll learn how to craft compelling narratives that resonate with readers.

  Additionally, you'll explore the publishing industry and avenues for sharing your work, empowering you to pursue your writing goals with clarity and purpose. Whether you dream of writing a novel, crafting short stories, or exploring poetry and memoir, this workshop offers a supportive and inspiring environment to unlock your creative potential as a writer. ", address: "Champs-Élysées, Paris, France" },

  {  title: "Graphic Design Masterclass", description: "Learn the fundamentals of graphic design and unleash your creativity in this hands-on masterclass.", start_date: Date.today + 2.weeks, end_date: Date.today + 4.weeks,  price: 349.99, course_creator_id: users.sample.id, active: true, tag: "Design", text_editor: "Discover the art of visual communication and design with our Graphic Design Masterclass tailored for aspiring designers and creatives. Over the course of sixteen weeks, you'll explore the principles of graphic design, including typography, color theory, layout design, and visual hierarchy. Through a combination of lectures, design exercises, and real-world projects, you'll develop a solid foundation in design fundamentals and learn how to apply them effectively across various media platforms. From creating logos and branding materials to designing marketing collateral and digital assets, you'll gain practical experience in bringing your creative vision to life with industry-standard design tools and software. Additionally, you'll explore emerging trends in graphic design, such as motion graphics, interactive design, and user experience (UX) design, ensuring you stay ahead of the curve in this dynamic and rapidly evolving field. Whether you aspire to pursue a career in graphic design, enhance your creative skills, or launch your own design business, this masterclass provides the comprehensive training and mentorship needed to succeed in the competitive world of visual communication.", address: "Plaza Mayor, 28012 Madrid, Spain" },

  {  title: "Public Speaking Mastery", description: "Hone your public speaking skills and command the stage with confidence in this dynamic mastery program.", start_date: Date.today + 2.days, end_date: Date.today + 5.days,  price: 299.99, course_creator_id: users.sample.id, active: true, tag: "Public Speaking", text_editor: "Unlock the power of effective communication and become a compelling public speaker with our Public Speaking Mastery program designed for professionals, leaders, and aspiring speakers. Over the span of ten weeks, you'll learn proven techniques and strategies to overcome stage fright, organize your thoughts, and deliver impactful presentations that captivate and inspire audiences.

  Led by experienced speech coaches and communication experts, this program covers all aspects of public speaking, from vocal delivery and body language to storytelling and audience engagement. Through interactive workshops, speech rehearsals, and constructive feedback sessions, you'll refine your speaking style and develop the confidence to command the stage with authority and authenticity. Additionally, you'll explore advanced speaking techniques, such as persuasive speaking, impromptu speaking, and virtual presentations, preparing you to excel in a variety of speaking contexts and platforms. Whether you're presenting in boardrooms, conference halls, or virtual settings, this program provides the tools and support needed to elevate your speaking skills and make a lasting impact with your message", address: "1 Infinite Loop, Cupertino, CA 95014, United States" }
  ])

  puts "descriptions"


  reviews = Review.create!([
  { rating: "4", comment: "The course was an enlightening journey into programming logic and clear syntax. Highly recommend for everyone.", course_id: courses.sample.id },
  { rating: "5", comment: "The depth of content and practical projects in the Rails course is unmatched. Great for aspiring developers", course_id: courses.sample.id },
  { rating: "3", comment: "Engaging and thorough, the course equipped me with the skills needed to excel in my tech career", course_id: courses.sample.id },
  { rating: "4", comment: "Learning everything through this course was pivotal; it's clear, concise, and incredibly practical", course_id: courses.sample.id },
  { rating: "4", comment: "The depth of content and practical projects in the Rails course is unmatched. Great for aspiring developers", course_id: courses.sample.id },
  { rating: "3", comment: "Best career decision I've made in a long time", course_id: courses.sample.id },
  { rating: "5", comment: "Best career move I've made", course_id: courses.sample.id },
  { rating: "4", comment: "Totally happy I made this career change", course_id: courses.sample.id },
  { rating: "5", comment: "Best career decision I've made", course_id: courses.sample.id },
  { rating: "3", comment: "It was very intense but now I'm on twice the salary I was before", course_id: courses.sample.id },
  { rating: "5", comment: "It was very intense but I now feel able to apply for tech jobs", course_id: courses.sample.id }
])


puts "Created 20 fake reviews."

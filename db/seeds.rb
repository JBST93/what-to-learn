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
  { first_name: "Nicolas", last_name: "Ayoub", email: "nico@school.com", bio: "Hi, I'm Nicolas Ayoub 🚀, an instructor at our school. I'm passionate about teaching and sharing my knowledge with students. With years of experience, I specialize in fostering critical thinking, communication, and problem-solving skills. My goal is to empower students to succeed and thrive in their academic journey" ,  role: "instructor", password: "password" },
  { first_name: "Marco", last_name: "Ricci", email: "marco@school.com", bio: "Hey there, I'm Marco Ricci, and I'm thrilled to be an instructor at What to Learn. I bring a wealth of knowledge and expertise to the classroom. I specialize in cultivating creativity, collaboration, and adaptability among students. My teaching style focuses on creating a dynamic and interactive learning environment where students can explore and grow.", role: "instructor", password: "password" },
  { first_name: "Ben", last_name: "McLaren", email: "ben@school.com", bio: "Hi, I'm Ben McLaren, and I'm proud to be part of the teaching team at What to Learn. I'm passionate about education and love sharing my enthusiasm with students. With a focus on student-centered learning, I specialize in promoting critical thinking, research, and analytical skills. I'm committed to providing a supportive and engaging learning experience for all students", role: "instructor", password: "password" },
  { first_name: "Deji", last_name: "Hastrup", email: "dez@school.com", bio: "Hello, I'm Deji Hastrup, and I'm excited to be an instructor here at What to Learn. As an educator, I specialize in fostering curiosity, resilience, and self-motivation among students. With a focus on experiential learning, I create opportunities for students to apply their knowledge and skills in real-world contexts. My goal is to inspire students to reach their full potential and pursue their passions.", role: "instructor", password: "password" },
  { first_name: "Ebitari", last_name: "Alaibe", email: "ebitari@school.com", bio: "Hi, I'm Ebitari Alaibe, and I'm passionate about helping students succeed. As an instructor at What to Learn, I specialize in developing critical thinking, problem-solving, and decision-making skills. I believe in creating a collaborative learning environment where everyone feels valued and empowered to reach their goals.", role: "instructor", password: "password" },
  { first_name: "Hamed", last_name: "Aljamry", email: "hamed@school.com", bio: "Hi, I'm Hamed Aljamry, an instructor at What to Learn. With a dedication to teaching and a passion for the same name, I specialize in cultivating creativity, critical thinking, and collaboration among students. My goal is to create an engaging and supportive learning environment where students can excel and reach their full potential.", role: "instructor", password: "password" },
  { first_name: "Jake", last_name: "Pople", email: "jake@school.com", bio: "Hey there, I'm Jake Pople, and I'm excited to be an instructor at What to Learn. With a background in the same name, I bring a wealth of knowledge and experience to the classroom. I specialize in fostering curiosity, problem-solving, and effective communication skills among students.", role: "instructor", password: "password" },
  { first_name: "Jasper", last_name: "Warmenhoven", email: "jasper@school.com", bio: "Hello, I'm Jasper Warmenhoven, a passionate instructor at What to Learn. As an educator, I specialize in creating engaging learning experiences that inspire students to explore and innovate. With a focus on the same name, I foster critical thinking, creativity, and adaptability among students.", role: "instructor", password: "password" },
  { first_name: "Louis", last_name: "Leslie", email: "louisl@school.com", bio: "Hi, I'm Louis Leslie, and I'm proud to be part of the teaching team at What to Learn. With a commitment to excellence and a focus on student success, I specialize in developing problem-solving, research, and analytical skills in the same name. My teaching philosophy emphasizes active learning and student engagement, ensuring that every student has the opportunity to thrive and reach their academic goals.", role: "instructor", password: "password" },
  { first_name: "Louise", last_name: "Stone", email: "louise@school.com", bio: "Hi, I'm Louise Stone, an instructor at What to Learn. With a passion for teaching and a dedication to student success, I specialize in fostering a growth mindset, resilience, and self-confidence among students in the same name.", role: "instructor", password: "password" },
  { first_name: "Lucien", last_name: "George", email: "lucien@school.com", bio: "Hi, I'm Lucien George, and I'm thrilled to be an instructor at What to Learn. With a background in the same name, I bring a wealth of knowledge and expertise to the classroom. I specialize in fostering creativity, critical thinking, and collaboration among students.", role: "instructor", password: "password" },
  { first_name: "Jacek", last_name: "Bastin", email: "jacek@school.com", bio: "I'm Jacek, and I'm thrilled to be an instructor at What to Learn. With a background in the same name, I bring a wealth of knowledge and expertise to the classroom. I specialize in fostering creativity, critical thinking, and collaboration among students.", role: "student", password: "password" }

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
  {  title: "Become a master in Data Structures and Algorithms", description: "Gain mastery in data structures and algorithms through a comprehensive course covering the fundamental principles.", start_date: Date.today, end_date: Date.today + 3.months,  price: 299.99, course_creator_id: users.sample.id, active: true, tag: "Data Science", text_editor: "This comprehensive course is designed to equip you with the essential knowledge and skills needed to become a proficient master in data structures and algorithms. Whether you're a beginner or an experienced programmer looking to enhance your expertise, this course will guide you through a structured learning path to mastery.

  Throughout the course, you will delve deep into the fundamental principles of data structures and algorithms, gaining a thorough understanding of their importance in computer science and software development. Starting from the basics, you will learn about various data structures such as arrays, linked lists, stacks, queues, trees, heaps, graphs, and hash tables. You will explore their characteristics, operations, and implementations, along with analyzing their time and space complexities.

  In addition to understanding data structures, you will also master various algorithmic techniques and strategies. You will learn how to design and analyze algorithms for sorting, searching, graph traversal, dynamic programming, and more. Through hands-on exercises and coding challenges, you will gain practical experience in implementing these algorithms efficiently in real-world scenarios.

  Moreover, the course will cover advanced topics such as algorithm optimization, algorithmic problem-solving techniques, and common algorithm design paradigms like divide and conquer, greedy algorithms, and dynamic programming. You will also learn how to tackle complex algorithmic problems and how to approach algorithmic competitions and coding interviews effectively.

  By the end of this course, you will have developed a solid foundation in data structures and algorithms, enabling you to solve complex computational problems with confidence and efficiency. Whether you aspire to excel in software development, pursue academic research, or succeed in technical interviews, this course will empower you with the knowledge and skills needed to achieve your goals as a master in data structures and algorithms.", address: "1600 Pennsylvania Ave NW, Washington, DC 20500, United States", welcome_message: "Welcome to the 'Become a master in Data Structures and Algorithms' course at What to Learn! We're thrilled to have you join us on this journey to mastery. Over the next few months, you'll delve deep into the fundamental principles of data structures and algorithms, gaining a thorough understanding of their importance in computer science and software development. Whether you're a beginner or an experienced programmer, this course will equip you with the essential knowledge and skills needed to excel in the world of data structures and algorithms. Get ready to embark on an exciting learning adventure and unlock your full potential!", prep: "Familiarize yourself with basic programming concepts such as variables, loops, and conditional statements, and brush up on your understanding of time and space complexity. Additionally, install and set up the programming environment of your choice (e.g., Python, Java, C++)." },

  {  title: "Learn Product Management in the age of AI", description: "Master the art of product management in the era of artificial intelligence, from leveraging AI technologies to drive innovation to optimizing product performance for the digital age", start_date: Date.today + 15.days, end_date: Date.today + 5.months,  price: 349, course_creator_id: users.sample.id, active: true, tag: "Product AI", text_editor: "In this cutting-edge course, you will embark on a transformative journey to understand the intersection of product management and artificial intelligence (AI). With AI revolutionizing industries across the globe, product managers need to adapt and harness the power of AI to drive innovation, enhance user experiences, and create disruptive products. This comprehensive course will equip you with the knowledge, skills, and strategies to navigate the complexities of product management in the age of AI. From understanding the fundamentals of AI technologies to leveraging data-driven insights for product development and strategic decision-making, you will learn how to integrate AI seamlessly into every stage of the product lifecycle. Through real-world case studies, hands-on exercises, and expert insights, you will gain practical experience in identifying AI opportunities, defining product requirements, prioritizing features, and optimizing product performance. Whether you're a seasoned product manager looking to stay ahead of the curve or a newcomer eager to explore the limitless possibilities of AI-driven product innovation, this course will empower you to lead with confidence in shaping the future of product management.", address: "10 Downing Street, Westminster, London SW1A 2AA, United Kingdom", welcome_message: "Welcome to the 'Learn Product Management in the age of AI' course at What to Learn! We're excited to have you on board as we explore the intersection of product management and artificial intelligence. Over the next few months, you'll master the art of product management in the era of AI, from leveraging AI technologies to drive innovation to optimizing product performance for the digital age. Get ready to dive deep into the world of product management and discover how AI is transforming industries and shaping the future of product development. Let's embark on this transformative journey together!", prep: "Research and familiarize yourself with common AI technologies and their applications in product management, and explore case studies of successful products that have leveraged AI technologies for innovation. Reflect on your own experiences with product management and identify areas where AI could potentially enhance your products or processes." },

  {  title: "Mastering Culinary Arts: Chef's Immersion Program", description: "Immerse yourself in the world of culinary arts, mastering techniques from knife skills to gourmet plating", start_date: Date.today + 3.days, end_date: Date.today + 4.months,  price: 199.99, course_creator_id: users.sample.id, active: true, tag: "Cooking", text_editor: "Embark on a transformative culinary journey with our immersive Chef's Immersion Program designed for aspiring chefs and culinary enthusiasts alike. Spanning twenty weeks, this comprehensive program offers a deep dive into the art and science of cooking, from mastering fundamental techniques to exploring advanced culinary concepts. Under the guidance of our esteemed culinary instructors, you'll learn the principles of flavor development, menu design, and kitchen management, while honing your culinary creativity through hands-on cooking labs and creative challenges.

  Engage with industry professionals through guest lectures, culinary demonstrations, and field trips to local farms, markets, and restaurants, gaining insight into the latest culinary trends and practices shaping the industry. Additionally, you'll explore the cultural and historical contexts of various cuisines, broadening your culinary repertoire and deepening your appreciation for global gastronomy. Whether you aspire to launch your own restaurant, pursue a career as a professional chef, or simply elevate your home cooking skills, this program provides the comprehensive training and mentorship needed to succeed in the dynamic world of culinary arts", address: "5 Avenue Anatole France, 75007 Paris, France", welcome_message: "Welcome to the 'Mastering Culinary Arts: Chef's Immersion Program' at What to Learn! We're thrilled to have you join us on this culinary journey of discovery and mastery. Over the next twenty weeks, you'll immerse yourself in the world of culinary arts, mastering techniques from knife skills to gourmet plating. Under the guidance of our esteemed culinary instructors, you'll learn the principles of flavor development, menu design, and kitchen management, while honing your creativity through hands-on cooking labs and creative challenges. Whether you aspire to launch your own restaurant or simply elevate your home cooking skills, this program offers the comprehensive training and mentorship needed to succeed in the dynamic world of culinary arts. Let's get cooking!", prep: "Brush up on basic cooking techniques such as knife skills, sautéing, and baking, and experiment with different flavor combinations and cooking methods to expand your culinary repertoire. Research and gather recipes that you're interested in exploring during the program." },

  {  title: "Yoga Retreat: Mindfulness and Wellness", description: "Rejuvenate your mind and body with a serene yoga retreat focusing on mindfulness and holistic wellness.", start_date: Date.today + 2.weeks, end_date: Date.today + 4.months,  price: 149.99, course_creator_id: users.sample.id, active: true, tag: "Wellness", text_editor: "Escape the stresses of modern life and embark on a transformative Yoga Retreat nestled in the tranquil embrace of nature. Over the course of four weeks, you'll immerse yourself in a holistic wellness journey designed to nourish your body, mind, and spirit. Each day begins with sunrise yoga sessions, allowing you to awaken your senses and cultivate a deep sense of presence and mindfulness. Throughout the retreat, experienced yoga instructors will guide you through a variety of yoga styles, meditation practices, and breathwork techniques, empowering you to develop a sustainable and enriching yoga practice tailored to your individual needs.

  In addition to daily yoga sessions, you'll have the opportunity to participate in wellness workshops covering topics such as nutrition, stress management, and self-care rituals, providing you with practical tools and insights to support your overall well-being. Nourish yourself with nourishing, plant-based meals prepared with locally sourced ingredients, and connect with like-minded individuals in a supportive and nurturing community environment. Whether you're seeking to deepen your yoga practice, recharge your batteries, or embark on a journey of self-discovery, this retreat offers a sanctuary for holistic healing and transformation", address: "0 Piazza di Trevi, 00187 Rome, Italy", welcome_message: "Welcome to the 'Yoga Retreat: Mindfulness and Wellness' at What to Learn! We're delighted to have you join us for this transformative journey of self-discovery and holistic wellness. Over the next four weeks, you'll immerse yourself in a sanctuary of peace and tranquility, where you'll rejuvenate your mind, body, and spirit through yoga, meditation, and mindfulness practices. Led by experienced yoga instructors, you'll awaken your senses, cultivate inner peace, and nourish yourself with nourishing, plant-based meals. Whether you're seeking to deepen your yoga practice, recharge your batteries, or embark on a journey of self-discovery, this retreat offers the perfect opportunity to reconnect with yourself and find balance in today's fast-paced world. Get ready to embark on a journey of transformation and renewal!", prep: "Establish a daily yoga or meditation practice to familiarize yourself with basic poses and breathing techniques, and reflect on your wellness goals and intentions for the retreat. Start incorporating mindfulness practices into your daily routine, such as mindful eating or journaling." },

  {  title: "Mastering Mixology: Craft Cocktails Workshop", description: "Elevate your bartending skills with a hands-on workshop exploring the art of crafting signature cocktails", start_date: Date.today - 15.days, end_date: Date.today - 8.days,  price: 89.99, course_creator_id: users.sample.id, active: false, tag: "Mixology", text_editor: "Shake up your bartending repertoire and embark on a spirited journey into the world of mixology with our immersive Craft Cocktails Workshop. Over the span of twelve weeks, you'll dive deep into the art and science of cocktail crafting, from classic cocktails to innovative concoctions. Led by expert mixologists and beverage professionals, you'll learn essential techniques such as spirit selection, flavor balancing, and cocktail presentation, while also gaining insight into the history and cultural significance of various cocktail traditions. Through hands-on cocktail labs, interactive tastings, and behind-the-bar experiences, you'll hone your bartending skills and develop the confidence to create unique and memorable cocktails that delight the senses.

  Additionally, you'll explore the business side of bartending, covering topics such as inventory management, menu design, and customer service, equipping you with the knowledge and skills to excel in the competitive world of hospitality. Whether you aspire to become a professional bartender, enhance your career in the hospitality industry, or simply elevate your home bartending skills, this workshop provides the comprehensive training and mentorship needed to succeed in the dynamic and ever-evolving field of mixology.", address: "20th Street & Constitution Ave NW, Washington, DC 20551, United States", welcome_message: "Welcome to the 'Mastering Mixology: Craft Cocktails Workshop' at What to Learn! While this course is currently inactive, we're excited to share with you the world of mixology and cocktail crafting. Over the span of twelve weeks, this immersive workshop would have taken you on a spirited journey into the art and science of cocktail crafting. Led by expert mixologists and beverage professionals, you would have learned essential techniques such as spirit selection, flavor balancing, and cocktail presentation, while gaining insight into the history and cultural significance of various cocktail traditions. Whether you aspire to become a professional bartender, enhance your career in the hospitality industry, or simply elevate your home bartending skills, this workshop provides the comprehensive training and mentorship needed to succeed in the dynamic and ever-evolving field of mixology.", prep: "Research and familiarize yourself with common spirits, liqueurs, and cocktail ingredients, and experiment with basic cocktail recipes and practice techniques such as shaking, stirring, and muddling. Invest in quality bar tools and equipment to prepare for hands-on cocktail crafting." },

  {  title: "Digital Marketing & Sales Bootcamp", description: "Gain practical insights and strategies to excel in digital marketing, from social media to SEO", start_date: Date.today - 5.months, end_date: Date.today - 2.months,  price: 629.99, course_creator_id: users.sample.id, active: false, tag: "Digital Marketing", text_editor: "Propel your career in digital marketing to new heights with our immersive Digital Marketing Bootcamp tailored for marketing professionals, entrepreneurs, and aspiring digital marketers. Over the span of sixteen weeks, you'll embark on a comprehensive exploration of the digital marketing landscape, from foundational principles to advanced strategies and tactics. Led by industry experts with years of hands-on experience, this bootcamp covers essential digital marketing disciplines, including search engine optimization (SEO), social media marketing, email marketing, content marketing, and paid advertising.

  Through a combination of interactive lectures, case studies, workshops, and real-world projects, you'll acquire the skills and knowledge needed to create and execute effective digital marketing campaigns that drive measurable results for your business or clients. Dive deep into the latest tools and technologies shaping the digital marketing industry, and gain practical experience in leveraging data analytics and marketing automation to optimize campaign performance and ROI. Additionally, you'll explore emerging trends and best practices in digital marketing, from influencer marketing and conversational marketing to voice search optimization and AI-driven marketing strategies, ensuring you stay ahead of the curve in this rapidly evolving field. Whether you're looking to advance your career, launch your own business, or expand your digital marketing skill set, this bootcamp provides the comprehensive training and mentorship needed to succeed in today's competitive digital landscape", address: "221B Baker St, Marylebone, London NW1 6XE, United Kingdom", welcome_message: "Welcome to the 'Digital Marketing & Sales Bootcamp' at What to Learn! While this course is currently inactive, we're excited to offer you a comprehensive exploration of the digital marketing landscape. Over the span of sixteen weeks, this immersive bootcamp would have equipped you with practical insights and strategies to excel in digital marketing, from social media to SEO. Led by industry experts with years of hands-on experience, you would have learned essential digital marketing disciplines, including search engine optimization (SEO), social media marketing, email marketing, content marketing, and paid advertising. Whether you're looking to advance your career, launch your own business, or expand your digital marketing skill set, this bootcamp provides the comprehensive training and mentorship needed to succeed in today's competitive digital landscape.", prep: "Review basic marketing concepts such as target audience segmentation, branding, and customer journey mapping, and familiarize yourself with popular digital marketing platforms and tools. Identify a digital marketing campaign or project you'd like to work on during the bootcamp, and start brainstorming ideas and goals." },

  {  title: "Creative Writing Workshop: Unlock Your Imagination", description: "Explore the art of storytelling and unleash your creativity in a dynamic writing workshop", start_date: Date.today + 1.month, end_date: Date.today + 4.months,  price: 999.99, course_creator_id: users.sample.id, active: true, tag: "Writing", text_editor: "Embark on a transformative journey of self-expression and creativity with our Creative Writing Workshop designed for writers of all levels. Over the course of twelve weeks, you'll immerse yourself in the craft of storytelling, exploring various genres, techniques, and narrative structures. Through interactive writing exercises, group discussions, and personalized feedback from experienced writers, you'll develop the skills and confidence to bring your ideas to life on the page. From character development and plot construction to setting and dialogue, you'll learn how to craft compelling narratives that resonate with readers.

  Additionally, you'll explore the publishing industry and avenues for sharing your work, empowering you to pursue your writing goals with clarity and purpose. Whether you dream of writing a novel, crafting short stories, or exploring poetry and memoir, this workshop offers a supportive and inspiring environment to unlock your creative potential as a writer. ", address: "Champs-Élysées, Paris, France", welcome_message: "Welcome to the 'Creative Writing Workshop: Unlock Your Imagination' at What to Learn! We're thrilled to have you join us on this transformative journey of self-expression and creativity. Over the next twelve weeks, you'll immerse yourself in the craft of storytelling, exploring various genres, techniques, and narrative structures. Through interactive writing exercises, group discussions, and personalized feedback from experienced writers, you'll develop the skills and confidence to bring your ideas to life on the page. Whether you dream of writing a novel, crafting short stories, or exploring poetry and memoir, this workshop offers a supportive and inspiring environment to unlock your creative potential as a writer.", prep: "Set aside dedicated time for writing practice each day, focusing on free writing or exploring different prompts, and read a variety of literature across different genres and styles to broaden your understanding of storytelling techniques. Reflect on your personal experiences and emotions, and consider how they can inspire and inform your writing." },

  {  title: "Graphic Design Masterclass", description: "Learn the fundamentals of graphic design and unleash your creativity in this hands-on masterclass.", start_date: Date.today + 2.weeks, end_date: Date.today + 4.weeks,  price: 349.99, course_creator_id: users.sample.id, active: true, tag: "Design", text_editor: "Discover the art of visual communication and design with our Graphic Design Masterclass tailored for aspiring designers and creatives. Over the course of sixteen weeks, you'll explore the principles of graphic design, including typography, color theory, layout design, and visual hierarchy. Through a combination of lectures, design exercises, and real-world projects, you'll develop a solid foundation in design fundamentals and learn how to apply them effectively across various media platforms. From creating logos and branding materials to designing marketing collateral and digital assets, you'll gain practical experience in bringing your creative vision to life with industry-standard design tools and software. Additionally, you'll explore emerging trends in graphic design, such as motion graphics, interactive design, and user experience (UX) design, ensuring you stay ahead of the curve in this dynamic and rapidly evolving field. Whether you aspire to pursue a career in graphic design, enhance your creative skills, or launch your own design business, this masterclass provides the comprehensive training and mentorship needed to succeed in the competitive world of visual communication.", address: "Plaza Mayor, 28012 Madrid, Spain", welcome_message: "Welcome to the 'Graphic Design Masterclass' at What to Learn! We're excited to have you join us as we explore the fundamentals of graphic design and unleash your creativity in this hands-on masterclass. Over the span of sixteen weeks, you'll delve into the principles of graphic design, including typography, color theory, layout design, and visual hierarchy. Through a combination of lectures, design exercises, and real-world projects, you'll develop a solid foundation in design fundamentals and learn how to apply them effectively across various media platforms. Whether you aspire to pursue a career in graphic design, enhance your creative skills, or launch your own design business, this masterclass provides the comprehensive training and mentorship needed to succeed in the competitive world of visual communication.", prep: "Familiarize yourself with design principles such as balance, hierarchy, and contrast, and experiment with design software to get comfortable with basic tools and functions. Start building a mood board or collection of design inspiration to inform your projects during the masterclass." },

  {  title: "Public Speaking Mastery", description: "Hone your public speaking skills and command the stage with confidence in this dynamic mastery program.", start_date: Date.today + 2.days, end_date: Date.today + 5.days,  price: 299.99, course_creator_id: users.sample.id, active: true, tag: "Public Speaking", text_editor: "Unlock the power of effective communication and become a compelling public speaker with our Public Speaking Mastery program designed for professionals, leaders, and aspiring speakers. Over the span of ten weeks, you'll learn proven techniques and strategies to overcome stage fright, organize your thoughts, and deliver impactful presentations that captivate and inspire audiences.

  Led by experienced speech coaches and communication experts, this program covers all aspects of public speaking, from vocal delivery and body language to storytelling and audience engagement. Through interactive workshops, speech rehearsals, and constructive feedback sessions, you'll refine your speaking style and develop the confidence to command the stage with authority and authenticity. Additionally, you'll explore advanced speaking techniques, such as persuasive speaking, impromptu speaking, and virtual presentations, preparing you to excel in a variety of speaking contexts and platforms. Whether you're presenting in boardrooms, conference halls, or virtual settings, this program provides the tools and support needed to elevate your speaking skills and make a lasting impact with your message", address: "1 Infinite Loop, Cupertino, CA 95014, United States", welcome_message: "Welcome to the 'Public Speaking Mastery' program at What to Learn! We're excited to have you join us on this transformative journey to become a compelling public speaker. Over the span of ten weeks, you'll learn proven techniques and strategies to overcome stage fright, organize your thoughts, and deliver impactful presentations that captivate and inspire audiences. Led by experienced speech coaches and communication experts, this program covers all aspects of public speaking, from vocal delivery and body language to storytelling and audience engagement. Whether you're presenting in boardrooms, conference halls, or virtual settings, this program provides the tools and support needed to elevate your speaking skills and make a lasting impact with your message.", prep: "Practice speaking in front of a mirror or recording yourself to become aware of your body language and vocal delivery, and identify and analyze speeches or presentations from speakers you admire. Start brainstorming topics or ideas for speeches or presentations you'd like to work on during the program." }
  ])

  puts "descriptions created"

#   reviews = Review.create!([
#   { rating: "4", comment: "The course was an enlightening journey into programming logic and clear syntax. Highly recommend for everyone.", course: Course.all.sample, user: User.all.sample },
#   { rating: "5", comment: "The depth of content and practical projects in the Rails course is unmatched. Great for aspiring developers", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "3", comment: "Engaging and thorough, the course equipped me with the skills needed to excel in my tech career", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "4", comment: "Learning everything through this course was pivotal; it's clear, concise, and incredibly practical", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "4", comment: "The depth of content and practical projects in the Rails course is unmatched. Great for aspiring developers", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "3", comment: "Best career decision I've made in a long time", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "5", comment: "Best career move I've made", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "4", comment: "Totally happy I made this career change", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "5", comment: "Best career decision I've made", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "3", comment: "It was very intense but now I'm on twice the salary I was before", course_id: courses.sample.id, user: User.all.sample },
#   { rating: "5", comment: "It was very intense but I now feel able to apply for tech jobs", course_id: courses.sample.id, user: User.all.sample }
# ])


puts "Created 20 fake reviews."

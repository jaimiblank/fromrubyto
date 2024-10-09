# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear the database before seeding
puts "Clearing database..."
Topic.destroy_all

puts "Database cleared."

puts "Seeding topics..."
topics = [
  ["Next.js", "Build Fast and Scalable React Applications", "Next.js is a powerful React framework. It enables server-side rendering and static site generation. Next.js simplifies the process of building fast and scalable web applications."],
  ["JavaScript", "Master the Language of the Web", "JavaScript is the backbone of modern web development. It allows for dynamic and interactive user experiences. JavaScript's versatility makes it essential for both front-end and back-end development."],
  ["React", "Building Interactive User Interfaces", "React is a popular JavaScript library for building user interfaces. It uses a component-based architecture for efficient UI development. React's virtual DOM ensures optimal performance for complex applications."],
  ["Node.js", "Bringing JavaScript to the Server", "Node.js allows JavaScript to run on the server-side. It provides a vast ecosystem of packages through npm. Node.js is known for its non-blocking, event-driven architecture."],
  ["TypeScript", "Static Typing for Scalable JavaScript", "TypeScript adds static typing to JavaScript, enhancing code quality. It provides better tooling and autocompletion in modern IDEs. TypeScript helps catch errors early in the development process."],
  ["Python", "The Versatile Programming Language", "Python is known for its simplicity and readability. It has a wide range of applications, from web development to data science. Python's extensive library ecosystem makes it a go-to language for many developers."],
  ["SQL", "Querying Databases with Precision", "SQL is the standard language for relational database management. It allows for efficient data retrieval and manipulation. SQL's declarative nature makes it powerful for complex data operations."],
  ["Docker", "Containerize Your Applications for Efficiency", "Docker simplifies application deployment through containerization. It ensures consistency across different development and production environments. Docker containers are lightweight and easily scalable."],
  ["GraphQL", "Efficient Data Fetching with Flexible Queries", "GraphQL provides a more efficient alternative to REST APIs. It allows clients to request exactly the data they need. GraphQL's strong typing system helps in creating more robust APIs."],
  ["Git", "Version Control for Collaborative Development", "Git is essential for tracking changes in source code during software development. It facilitates collaboration among developers working on the same project. Git's branching and merging capabilities make it powerful for managing complex codebases."],
]

topics.each do |topic, subtitle, content|
  Topic.create!(name: topic, subtitle: subtitle, content: content)
end

puts "Created #{Topic.count} topics"

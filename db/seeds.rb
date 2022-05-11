# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Task.destroy_all
Project.destroy_all

languages = Project.create(title: 'Language Learning')
Task.create(title: 'Read Japanese', description: 'Jouzuninarusuruyouni', project: languages)

self_improvement = Project.create(title: 'Self Improvement')
Task.create(title: 'Cry', description: "It's good for the soul", project: self_improvement)

programming = Project.create(title: 'Learning to Code')
Task.create(title: 'Learn Vue', description: "Because React wasn't enough", project: programming)

Project.all.each do |project|
  puts "#{project.title}"
end
puts "Created some Projects for you my tomodachi!"

Task.all.each do |task|
  puts "#{task.title} - #{task.description}"
end

puts "Created some Tasks for you my tomodachi!"

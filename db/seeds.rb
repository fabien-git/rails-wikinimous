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

puts "destroy in progress"
Article.destroy_all
puts "destroy ok!"

puts "creating in progress"
10.times do |i|
  title = Faker::Book.title
  content = Faker::Lorem.sentence(word_count: 50, random_words_to_add: 10)
  Article.create(title: title, content: content)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Post.delete_all

Post.create!(image: "http://askwomenonline.org/wp-content/uploads/2017/12/hummus-recipe-760x428.jpg", content: "#{Faker::Hipster.sentence(3, false, 0)}")
Post.create!(image: "https://img.grouponcdn.com/deal/8DDtq5XRzVnLXEUnPHPd/p2-2048x1229/v1/c700x420.jpg", content: "#{Faker::Hipster.sentence(3, false, 0)}")
Post.create!(image: "https://media-cdn.tripadvisor.com/media/photo-s/11/76/1c/72/stock-burger-co.jpg", content: "#{Faker::Hipster.sentence(3, false, 0)}")
Post.create!(image: "https://media-cdn.tripadvisor.com/media/photo-s/11/76/1c/72/stock-burger-co.jpg", content: "#{Faker::Hipster.sentence(3, false, 0)}")

Post.all.each do |post|
  Comment.create!(post: post, text: "#{Faker::Hipster.sentence(2, false, 0)}", name: "#{Faker::Name.first_name}")
  Comment.create!(post: post, text: "#{Faker::Hipster.sentence(2, false, 0)}", name: "#{Faker::Name.first_name}")
  Comment.create!(post: post, text: "#{Faker::Hipster.sentence(2, false, 0)}", name: "#{Faker::Name.first_name}")
end


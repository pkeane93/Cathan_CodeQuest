# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting all Post and users"
Post.destroy_all
User.destroy_all

admin = User.create(email:ENV["EMAIL"], password:ENV["PASS"], admin:true)
puts "#{admin.email} is created"

6.times do
  Post.create!(
    title: "Title here",
    subtitle: "Content here",
    image_url: "app/assets/images/undraw_blog-post_f68f.svg",
    user: admin)
end

puts "#{Post.count} Posts are created"

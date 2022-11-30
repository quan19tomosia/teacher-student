# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: "admin@example.com", password: "123456", name: Faker::Name.name, role: :admin)

(1..5).each do |n|
  User.create!(email: "teacher#{n}@teacher.com", password: "123456", name: Faker::Name.unique.name, role: :teacher)
  User.create!(email: "student#{n}@student.com", password: "123456", name: Faker::Name.unique.name, role: :student)
end

(1..3).each do |i|
  course = ClassRoom.create!(name: "A1#{i}")
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

puts "Cleaning DB..."
User.destroy_all
Event.destroy_all
puts "DB destroyed!"

puts "Creating users..."
user1 = User.create!(email: "amelie@agencecosmo.com", password: "password", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2020,12,1)
end_date1 = DateTime.new(2020,12,3)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Bordeaux", emailing_status: 1, description: "Conférence Annuelle Erasmus 2020", user_id: user1.id)
puts "Events created..."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

puts "Cleaning DB..."
Booking.destroy_all
Workshop.destroy_all
Participant.destroy_all
User.destroy_all
Event.destroy_all
puts "DB destroyed!"

puts "Creating users..."
user1 = User.create!(email: "amelie@agencecosmo.com", password: "password", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "password", company: "Erasmus +", admin: false, first_name: "Chloé", last_name: "Bonnet")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2020,12,1)
end_date1 = DateTime.new(2020,12,3)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Bordeaux", name: "Conférence Annuelle Erasmus 2020", user_id: user1.id)
puts "Events created..."

puts "Creating workshops"
workshop1 = Workshop.create!(start_at: DateTime.new(2020,12,1,11), end_at: DateTime.new(2020,12,1,12), name: "Atelier 1", event: event1)
workshop2 = Workshop.create!(start_at: DateTime.new(2020,12,1,12), end_at: DateTime.new(2020,12,1,13), name: "Atelier 2", event: event1)
workshop3 = Workshop.create!(start_at: DateTime.new(2020,12,1,14), end_at: DateTime.new(2020,12,1,15), name: "Atelier 3", event: event1)
puts "Workshops created..."

puts "Creating participants..."
participant1 = Participant.create!(email: "test1@gmail.com", company: "Erasmus +", first_name: "Jean", last_name: "Paul", address: "test1", zipcode: "00000", city: "Test1")
participant2 = Participant.create!(email: "test2@gmail.com", company: "Erasmus +", first_name: "Bob", last_name: "Dylan", address: "test2", zipcode: "00000", city: "Test2")
puts "Participants created..."

puts "Creating bookings"
booking1 = Booking.create!(participant: participant1, workshop: workshop1)
puts "Bookings created"

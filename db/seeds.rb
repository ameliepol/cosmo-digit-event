ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Cleaning DB..."
Booking.destroy_all
Workshop.destroy_all
Participant.destroy_all
User.destroy_all
Event.destroy_all
puts "DB destroyed!"

puts "Creating users..."
user1 = User.create!(email: "amelie@agencecosmo.com", password: "Aquilogia2022", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "Aquilogia2022", company: "Agence Cosmo", admin: false, first_name: "Chloé", last_name: "Bonnet")
user3 = User.create!(email: "c.lamaison@aquilogia.fr", password: "Aquilogia2022", company: "Aquilogia", admin: false, first_name: "Camille", last_name: "Lamaison")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2022,09,08)
end_date1 = DateTime.new(2022,09,08)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Saint-Jean-de-Luz", name: "Inauguration Aquilogia Saint-Jean-de-Luz", user_id: user1.id)
puts "Events created..."


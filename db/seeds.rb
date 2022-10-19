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
user1 = User.create!(email: "amelie@agencecosmo.com", password: "Erasmus2022", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "Erasmus2022", company: "Agence Cosmo", admin: false, first_name: "Chloé", last_name: "Bonnet")
user3 = User.create!(email: "aurelie.comat@agence-erasmus.fr", password: "Erasmus2022", company: "Agence Erasmus", admin: false, first_name: "Aurélie", last_name: "Comat")
user4 = User.create!(email: "experts.efp@agence-erasmus.fr", password: "Erasmus2022", company: "Agence Erasmus", admin: false, first_name: "Experts", last_name: "Efp")
user5 = User.create!(email: "vanessa.duval.pro@gmail.com", password: "Erasmus2022", company: "Agence Erasmus", admin: false, first_name: "Vanessa", last_name: "Duval")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2022,11,10)
end_date1 = DateTime.new(2022,11,10)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Paris", name: "Webcast Reconnaissance de la mobilité européenne en Formation professionnelle Initiale", user_id: user1.id)
puts "Events created..."


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
user1 = User.create!(email: "amelie@agencecosmo.com", password: "Erasmus2023", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "Erasmus2023", company: "Agence Cosmo", admin: false, first_name: "Chloé", last_name: "Bonnet")
user3 = User.create!(email: "laurent.lascrou@agence-erasmus.fr", password: "Erasmus2023", company: "Agence Erasmus", admin: false, first_name: "Laurent", last_name: "Lascrou")
user4 = User.create!(email: "orianne.rambertp@agence-erasmus.fr", password: "Erasmus2023", company: "Agence Erasmus", admin: false, first_name: "Orianne", last_name: "Rambert")
user5 = User.create!(email: "andrea.cozon@agence-erasmus.fr", password: "Erasmus2023", company: "Agence Erasmus", admin: false, first_name: "Andrea", last_name: "Cozon")
user5 = User.create!(email: "clarisse.boudard@agence-erasmus.fr", password: "Erasmus2023", company: "Agence Erasmus", admin: false, first_name: "Clarisse", last_name: "Boudard")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2023,06,06)
end_date1 = DateTime.new(2023,06,06)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Paris", name: "Webconférence Orientation et compétences à l'ère des transitions", user_id: user1.id)
puts "Events created..."


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Cleaning DB..."
Question.destroy_all
Booking.destroy_all
Workshop.destroy_all
Participant.destroy_all
User.destroy_all
Event.destroy_all
puts "DB destroyed!"

puts "Creating users..."
user1 = User.create!(email: "amelie@agencecosmo.com", password: "ConfErasmus2021", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "ConfErasmus2021", company: "Agence Cosmo", admin: false, first_name: "Chloé", last_name: "Bonnet")
user3 = User.create!(email: "Cyril.Dejean@agence-erasmus.fr", password: "ConfErasmus2021", company: "Erasmus+", admin: false, first_name: "Cyril", last_name: "Dejean")
user4 = User.create!(email: "Irina.Dufaud@agence-erasmus.fr", password: "ConfErasmus2021", company: "Erasmus+", admin: false, first_name: "Irina", last_name: "Dufaud")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2021,01,14)
end_date1 = DateTime.new(2021,01,18)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Bordeaux", name: "Conférence Erasmus+, bilan et perspectives", user_id: user1.id)
puts "Events created..."

puts "Creating workshops"
workshop1 = Workshop.create!(start_at: DateTime.new(2021,01,14,9), end_at: DateTime.new(2021,01,14,10), name: "Conférence de cadrage", description: "Bilan du programme actuel et nouvelles perspectives et défis pour Erasmus + 2021-2027.
Laure Coudret-Laut, directrice de l’Agence française > bilan du programme 2014-2020 et perspectives nouveau programme
Laurence FARRENG, Eurodéputée française, membre de la commission Culture et Education (confirmée) > point sur la négociation budget et règlement du programme (enregistrement > MICV)
Madame Thémis Christophidou, directrice générale éducation, culture, jeunesse et sports, Commission européenne ou son/ sa représentante > point sur le nouveau programme, ses nouveautés (enregistrement MICV)", speaker: "Emmanuelle Bastide (RFI)", event: event1)
workshop2 = Workshop.create!(start_at: DateTime.new(2021,01,14,10), end_at: DateTime.new(2021,01,14,11), name: "Session transversale", description: "2021 : le bilan sur les accréditations et les Chartes Erasmus+ et les nouveautés sur les partenariats (AC2)", event: event1)
workshop3 = Workshop.create!(start_at: DateTime.new(2021,01,14,11), end_at: DateTime.new(2021,01,14,11.5), name: "Intermède 1", description: "contenu à définir (propositions :
1- L’agence producteur de connaissance (études)-> point contact Laurence Liégeois MEP
2- Ecosystème AN >Point contact MICV
3- le nouvel Europass > Point contact Marielle DP,
LEL > point contact MICV?)
> coordination intermèdes MICV", event: event1)
workshop4 = Workshop.create!(start_at: DateTime.new(2021,01,14,11.5), end_at: DateTime.new(2021,01,14,12.5), name: "Session transversale", description: "Comment débuter avec Erasmus+ ? Voies d’accès au programme.", event: event1)
workshop5 = Workshop.create!(start_at: DateTime.new(2021,01,14,12.5), end_at: DateTime.new(2021,01,14,13.5), name: "Interruption déjeuner", description: "Contenu à définir", visible: false, event: event1)
workshop6 = Workshop.create!(start_at: DateTime.new(2021,01,14,13.5), end_at: DateTime.new(2021,01,14,14.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’enseignement scolaire ?", speaker: "DP : Agnès, Laura", event: event1)
workshop7 = Workshop.create!(start_at: DateTime.new(2021,01,14,14.25), end_at: DateTime.new(2021,01,14,14.5), name: "Intermède 2", description: "Contenu à définir (eTwinning ?)", speaker: "", event: event1)
workshop8 = Workshop.create!(start_at: DateTime.new(2021,01,14,14.5), end_at: DateTime.new(2021,01,14,15.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’enseignement professionnel ?", speaker: "DP : Gabriel, Sylvain", event: event1)
workshop9 = Workshop.create!(start_at: DateTime.new(2021,01,14,15.25), end_at: DateTime.new(2021,01,14,15.5), name: "Intermède 3", description: "Contenu à définir", speaker: "", event: event1)
workshop10 = Workshop.create!(start_at: DateTime.new(2021,01,14,15.5), end_at: DateTime.new(2021,01,14,16.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’enseignement supérieur ? (proposition d’intégrer une actualisation sur la dimension numérique ens. Sup ou lors de l’intermède)", speaker: "Mathilde", event: event1)
workshop11 = Workshop.create!(start_at: DateTime.new(2021,01,14,16.25), end_at: DateTime.new(2021,01,14,16.5), name: "Intermède 4", description: "Contenu à définir", speaker: "", event: event1)
workshop12 = Workshop.create!(start_at: DateTime.new(2021,01,14,16.5), end_at: DateTime.new(2021,01,14,17.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’éducation des adultes ?", speaker: "", event: event1)
workshop13 = Workshop.create!(start_at: DateTime.new(2021,01,18,13.5), end_at: DateTime.new(2021,01,18,14.25), name: "Enseignement scolaire :", description: "Vos questions, nos réponses", speaker: "", event: event1)
workshop14 = Workshop.create!(start_at: DateTime.new(2021,01,18,14.5), end_at: DateTime.new(2021,01,18,15.25), name: "Enseignement & formations professionnels :", description: "Vos questions, nos réponses", speaker: "", event: event1)
workshop15 = Workshop.create!(start_at: DateTime.new(2021,01,18,15.5), end_at: DateTime.new(2021,01,18,16.25), name: "Enseignement supérieur :", description: "Vos questions, nos réponses", speaker: "", event: event1)
workshop16 = Workshop.create!(start_at: DateTime.new(2021,01,18,16.5), end_at: DateTime.new(2021,01,18,17.25), name: "Education des adultes :", description: "Vos questions, nos réponses", speaker: "", event: event1)
puts "Workshops created..."

puts "Creating participants..."
participant1 = Participant.create!(email: "pol.amelie@gmail.com", company: "Enseignement supérieur", first_name: "Amélie", last_name: "Pol", address: "17 rue Caillou", zipcode: "33200", city: "Bordeaux", accepted_conditions: true)
participant2 = Participant.create!(email: "amelie@agencecosmo.com", company: "Enseignement supérieur", first_name: "Amélie", last_name: "Pol", address: "17 rue Caillou", zipcode: "33200", city: "Bordeaux", accepted_conditions: true)
puts "Participants created..."

puts "Creating bookings"
booking1 = Booking.create!(participant: participant1, workshop: workshop1)
puts "Bookings created"

puts "Creating questions..."
question1 = Question.create!(event: event1, email: "pol.amelie@gmail.com", organization: "Enseignement supérieur", first_name: "Amélie", last_name: "Pol", content: "Test1", accepted_conditions: true)
question2 = Question.create!(event: event1, email: "amelie@agencecosmo.com", organization: "Enseignement supérieur", first_name: "Amélie", last_name: "Pol", content: "Test2", accepted_conditions: true)
puts "Questions created..."

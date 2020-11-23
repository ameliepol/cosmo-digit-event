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
User.destroy_all
Event.destroy_all
puts "DB destroyed!"

puts "Creating users..."
user1 = User.create!(email: "amelie@agencecosmo.com", password: "ConfErasmus2021", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "ConfErasmus2021", company: "Agence Cosmo", admin: false, first_name: "Chloé", last_name: "Bonnet")
user3 = User.create!(email: "cyril.dejean@agence-erasmus.fr", password: "ConfErasmus2021", company: "Erasmus+", admin: false, first_name: "Cyril", last_name: "Dejean")
user4 = User.create!(email: "irina.dufaud@agence-erasmus.fr", password: "ConfErasmus2021", company: "Erasmus+", admin: false, first_name: "Irina", last_name: "Dufaud")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2021,01,14)
end_date1 = DateTime.new(2021,01,18)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Bordeaux", name: "Conférence Erasmus+, bilan et perspectives", user_id: user1.id)
puts "Events created..."

puts "Creating workshops"
workshop1 = Workshop.create!(start_at: DateTime.new(2021,01,14,9), end_at: DateTime.new(2021,01,14,10),
name: "Conférence de cadrage « Bilan du programme actuel et nouvelles perspectives et défis pour Erasmus+ 2021-2027 »",
description: "Madame Laure Coudret-Laut, directrice de l’Agence Erasmus + France Education-Formation, \n
Monsieur Mathieu Roumegous, directeur de l'Agence Erasmus + France Jeunesse et Sport, \n
Monsieur Jean-Michel Blanquer, ministre de l’Education nationale, de la Jeunesse et des Sports, \n
Madame Laurence Farreng, eurodéputée française, membre de la commission Culture et Education, \n
Madame Thémis Christophidou, directrice générale éducation, culture, jeunesse et sports, Commission européenne, \n
Monsieur Bernard Beignier, recteur de la région académique Provence-Alpes-Côte-D’azur, recteur de l’académie d’Aix-Marseille", event: event1)
workshop2 = Workshop.create!(start_at: DateTime.new(2021,01,14,10), end_at: DateTime.new(2021,01,14,11), name: "Session transversale Education & Formation et Jeunesse: Erasmus 2021-2027 : architecture, budget, opportunités",
description: "Cet atelier s’adresse à tous les participants quel que soit leur secteur et leur connaissance du programme Erasmus +.", event: event1)
workshop3 = Workshop.create!(start_at: DateTime.new(2021,01,14,11.5), end_at: DateTime.new(2021,01,14,12.5), name: "Session transversale Education & Formation : S’informer pour bien débuter dans Erasmus + 2021-2027",
description: "Cet atelier s’adresse aux organismes qui souhaitent se lancer dans le programme Erasmus +.
Les structures qui sont en cours d’accréditation ou d’obtention d’une charte ou intéressées par tout autre type de projet Erasmus + trouveront les conseils pour bien démarrer leur projet.", event: event1)
workshop4 = Workshop.create!(start_at: DateTime.new(2021,01,14,12.5), end_at: DateTime.new(2021,01,14,13.5), name: "Interruption déjeuner", visible: false, event: event1)
workshop5 = Workshop.create!(start_at: DateTime.new(2021,01,14,13.5), end_at: DateTime.new(2021,01,14,14.17), name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon établissement d’enseignement scolaire ?",
description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 (projets de mobilité) et Action Clé2 (projets de coopération) du secteur de l’enseignement scolaire.", event: event1)
workshop6 = Workshop.create!(start_at: DateTime.new(2021,01,14,14.42), end_at: DateTime.new(2021,01,14,15.09), name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon établissement d’enseignement professionnel ?",
description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur l’Enseignement et de la Formation Professionnels.", event: event1)
workshop7 = Workshop.create!(start_at: DateTime.new(2021,01,14,15.34), end_at: DateTime.new(2021,01,14,16), name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon établissement d’enseignement supérieur ?",
description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur l’enseignement supérieur.", event: event1)
workshop8 = Workshop.create!(start_at: DateTime.new(2021,01,14,16.25), end_at: DateTime.new(2021,01,14,16.92), name: "Quelles opportunités offre le nouveau programme Erasmus+ à ma structure du secteur de la jeunesse ?",
description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur de la jeunesse", event: event1)
workshop9 = Workshop.create!(start_at: DateTime.new(2021,01,14,17.17), end_at: DateTime.new(2021,01,14,18), name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon organisation chargée de l’éducation des adultes ?",
description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur de l’éducation des adultes.", event: event1)

workshop10 = Workshop.create!(start_at: DateTime.new(2021,01,18,13.5), end_at: DateTime.new(2021,01,18,14.17), name: "Enseignement scolaire", description: "Vos questions, nos réponses", event: event1)
workshop11 = Workshop.create!(start_at: DateTime.new(2021,01,18,14.42), end_at: DateTime.new(2021,01,18,15.09), name: "Enseignement & formations professionnels", description: "Vos questions, nos réponses", event: event1)
workshop12 = Workshop.create!(start_at: DateTime.new(2021,01,18,15.34), end_at: DateTime.new(2021,01,18,16), name: "Enseignement supérieur", description: "Vos questions, nos réponses", event: event1)
workshop13 = Workshop.create!(start_at: DateTime.new(2021,01,18,16.25), end_at: DateTime.new(2021,01,18,16.92), name: "Secteur jeunesse", description: "Vos questions, nos réponses", event: event1)
workshop14 = Workshop.create!(start_at: DateTime.new(2021,01,18,17.17), end_at: DateTime.new(2021,01,18,18), name: "Education des adultes", description: "Vos questions, nos réponses", event: event1)
puts "Workshops created..."

puts "Creating participants..."
participant1 = Participant.create!(email: "amelie@agencecosmo.com", company: "Enseignement supérieur", first_name: "Test", last_name: "Test", position: "Test", organization: "Test", accepted_conditions: true)
puts "Participants created..."

puts "Creating bookings"
booking1 = Booking.create!(participant: participant1, workshop: workshop1)
puts "Bookings created"

puts "Creating questions..."
question1 = Question.create!(event: event1, email: "amelie@agencecosmo.com", company: "Enseignement supérieur", first_name: "Test", last_name: "Test", position: "Test", organization: "Test", content: "Test", accepted_conditions: true)
puts "Questions created..."




# require 'date'

# puts "Finding users..."
# user1 = User.find_by(email: "amelie@agencecosmo.com")
# user2 = User.find_by(email: "chloe@agencecosmo.com")
# user3 = User.find_by(email: "cyril.dejean@agence-erasmus.fr")
# user4 = User.find_by(email: "irina.dufaud@agence-erasmus.fr")
# puts "Users found..."

# puts "Finding events..."
# event1 = Event.last
# puts "Events found..."

# puts "Updating workshops"
# workshop1 = Workshop.find_by(name: "Conférence de cadrage")
# workshop1.update(start_at: start_date1, end_at: end_date1, place: "Bordeaux", name: "Conférence Erasmus+, bilan et perspectives", user_id: user1.id)
# workshop2 = Workshop.find_by(name: "Session transversale")
# workshop2.update(start_at: DateTime.new(2021,01,14,10), end_at: DateTime.new(2021,01,14,11), name: "Session transversale", description: "2021 : le bilan sur les accréditations et les Chartes Erasmus+ et les nouveautés sur les partenariats (AC2)", event: event1)

# workshop3 = Workshop.create!(start_at: DateTime.new(2021,01,14,11), end_at: DateTime.new(2021,01,14,11.5), name: "Intermède 1", description: "contenu à définir (propositions :
# 1- L’agence producteur de connaissance (études)-> point contact Laurence Liégeois MEP
# 2- Ecosystème AN >Point contact MICV
# 3- le nouvel Europass > Point contact Marielle DP,
# LEL > point contact MICV?)
# > coordination intermèdes MICV", event: event1)
# workshop4 = Workshop.create!(start_at: DateTime.new(2021,01,14,11.5), end_at: DateTime.new(2021,01,14,12.5), name: "Session transversale", description: "Comment débuter avec Erasmus+ ? Voies d’accès au programme.", event: event1)
# workshop5 = Workshop.create!(start_at: DateTime.new(2021,01,14,12.5), end_at: DateTime.new(2021,01,14,13.5), name: "Interruption déjeuner", description: "", visible: false, event: event1)
# workshop6 = Workshop.create!(start_at: DateTime.new(2021,01,14,13.5), end_at: DateTime.new(2021,01,14,14.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’enseignement scolaire ?", speaker: "DP : Agnès, Laura", event: event1)
# workshop7 = Workshop.create!(start_at: DateTime.new(2021,01,14,14.25), end_at: DateTime.new(2021,01,14,14.5), name: "Intermède 2", description: "Contenu à définir (eTwinning ?)", speaker: "", event: event1)
# workshop8 = Workshop.create!(start_at: DateTime.new(2021,01,14,14.5), end_at: DateTime.new(2021,01,14,15.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’enseignement professionnel ?", speaker: "DP : Gabriel, Sylvain", event: event1)
# workshop9 = Workshop.create!(start_at: DateTime.new(2021,01,14,15.25), end_at: DateTime.new(2021,01,14,15.5), name: "Intermède 3", description: "Contenu à définir", speaker: "", event: event1)
# workshop10 = Workshop.create!(start_at: DateTime.new(2021,01,14,15.5), end_at: DateTime.new(2021,01,14,16.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’enseignement supérieur ? (proposition d’intégrer une actualisation sur la dimension numérique ens. Sup ou lors de l’intermède)", speaker: "Mathilde", event: event1)
# workshop11 = Workshop.create!(start_at: DateTime.new(2021,01,14,16.25), end_at: DateTime.new(2021,01,14,16.5), name: "Intermède 4", description: "Contenu à définir", speaker: "", event: event1)
# workshop12 = Workshop.create!(start_at: DateTime.new(2021,01,14,16.5), end_at: DateTime.new(2021,01,14,17.25), name: "Atelier", description: "Quelles opportunités offre le nouveau programme Erasmus + à mon établissement d’éducation des adultes ?", speaker: "", event: event1)
# workshop13 = Workshop.create!(start_at: DateTime.new(2021,01,18,13.5), end_at: DateTime.new(2021,01,18,14.25), name: "Enseignement scolaire", description: "Vos questions, nos réponses", speaker: "", event: event1)
# workshop14 = Workshop.create!(start_at: DateTime.new(2021,01,18,14.5), end_at: DateTime.new(2021,01,18,15.25), name: "Enseignement & formations professionnels", description: "Vos questions, nos réponses", speaker: "", event: event1)
# workshop15 = Workshop.create!(start_at: DateTime.new(2021,01,18,15.5), end_at: DateTime.new(2021,01,18,16.25), name: "Enseignement supérieur", description: "Vos questions, nos réponses", speaker: "", event: event1)
# workshop16 = Workshop.create!(start_at: DateTime.new(2021,01,18,16.5), end_at: DateTime.new(2021,01,18,17.25), name: "Education des adultes", description: "Vos questions, nos réponses", speaker: "", event: event1)
#puts "Workshops updated..."


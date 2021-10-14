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
user1 = User.create!(email: "amelie@agencecosmo.com", password: "Erasmus+2021", company: "Agence Cosmo", admin: true, first_name: "Amélie", last_name: "Pol")
user2 = User.create!(email: "chloe@agencecosmo.com", password: "Erasmus+2021", company: "Agence Cosmo", admin: false, first_name: "Chloé", last_name: "Bonnet")
user3 = User.create!(email: "sylvain.scherpereel@agence-erasmus.fr", password: "Erasmus+2021", company: "Erasmus+", admin: false, first_name: "Sylvain", last_name: "Scherpereel")
user4 = User.create!(email: "gabriel.moreau@agence-erasmus.fr", password: "Erasmus+2021", company: "Erasmus+", admin: false, first_name: "Gabriel", last_name: "Moreau")
puts "Users created..."

puts "Creating dates..."
start_date1 = DateTime.new(2021,11,10)
end_date1 = DateTime.new(2021,11,10)
puts "Dates created..."

puts "Creating events..."
event1 = Event.create!(start_at: start_date1, end_at: end_date1, place: "Paris", name: "Webinaire Mobilité des apprentis", user_id: user1.id)
puts "Events created..."

puts "Creating workshops"
workshop1 = Workshop.create!(start_at: DateTime.new(2021,11,10,10), end_at: DateTime.new(2021,11,10,10.5), name: "La mobilité des apprentis avec le programme Erasmus+",
description: "", speaker: "Sylvain Scherpereel, Chargé de développement sur le secteur de l’enseignement et la formation professionnels, Agence Erasmus+ France / Education Formation", event: event1)
workshop2 = Workshop.create!(start_at: DateTime.new(2021,11,10,10.5), end_at: DateTime.new(2021,11,10,11.5), name: "Mobilités hybrides",
description: "→ Regards croisés sur l’intérêt de développer des échanges à distance et des projets de mobilité hybride", speaker: "Lionel Clémençon, Département Promotion, Agence Erasmus+ France / Education Formation, \n
Pierre Touillon, Conseiller en internationalisation des compétences, CCCA-BTP, \n
Sandra Schmidt, Cheffe du Bureau Formation professionnelle, échanges universitaires et volontariat, Office franco-allemand pour la jeunesse (OFAJ), \n
Hakim Monteville, Formateur mécanique, LEA-CFI, \n
Stéphane Bouils, Directeur du CFA de la Chambre des métiers et de l’artisanat des Pyrénées orientales, \n
Rita Festi, Chargée du développement des nouveaux projets/actions, Scuola Central Formazione (IT), \n
Karine Perrier, Chargé de projet Ingénierie et Numérique, Pôle de formation Pasteur", event: event1)
workshop3 = Workshop.create!(start_at: DateTime.new(2021,11,10,11.5), end_at: DateTime.new(2021,11,10,12), name: "Mobilités et transition écologique",
description: "→ Regards croisés sur la prise en compte des enjeux liés à la transition écologique dans les projets de mobilité internationale ", speaker: "Corinne Le Fay-Souloy, Conseillère technique, Agence Erasmus+ France / Education Formation, \n
Eric Bastian, Formateur technique en aménagement paysager, CFPPA Savoir-Bugey, \n
Freddy Ferret, Délégué associé, Fédération régionale des MFR de Nouvelle-Aquitaine, \n
Sébastien Baillot, Responsable de l’institut des métiers du sanitaire et du génie climatique, Compagnons du Devoir et du Tour de France, \n
Roxana Flavia Dam, Chargée de mobilité au centre de formation professionnelle EUC-SYD (DK)", event: event1)
puts "Workshops created..."

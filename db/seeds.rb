ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Updating users..."
user1 = User.find_by(email: "amelie@agencecosmo.com")
user1.update(password: "CosmoEvent")
user2 = User.find_by(email: "chloe@agencecosmo.com")
user2.update(password: "CosmoEvent")
puts "Users updated..."

puts "Creating dates..."
start_date2 = DateTime.new(2021,06,10)
end_date2 = DateTime.new(2021,06,24)
puts "Dates created..."

puts "Creating events..."
event_grdr = Event.create!(start_at: start_date2, end_at: end_date2, place: "En ligne", name: "Les Jeudis du Littoral Ouest Africain", user_id: user1.id)
puts "Events created..."

puts "Creating workshops"
workshop_grdr1 = Workshop.create!(start_at: DateTime.new(2021,06,10,10), end_at: DateTime.new(2021,06,10,11.5), name: "Le littoral ouest africain : à la croisée des enjeux de protection et d'exploitation",
description: "Introduction sur les dynamiques et les évolutions du littoral suivi d’un échange sur les dynamiques et les mécanismes de protection environnementale des écosystèmes face aux dynamiques d’extraction des ressources renouvelables et non renouvelables.", event: event_grdr)
workshop_grdr2 = Workshop.create!(start_at: DateTime.new(2021,06,17,10), end_at: DateTime.new(2021,06,17,11.5), name: "Le littoral ouest africain : un bassin d'emploi sous régional",
description: "Les opportunités économiques des territoires du littoral ouest africain : de la place de l’économie alimentaire dans la structuration de l’économie du littoral à la complémentarité des zones de production et consommation, en passant par l’exploitation durable des ressources naturelles et la place des jeunes et femmes dans les filières porteuses.", event: event_grdr)
workshop_grdr3 = Workshop.create!(start_at: DateTime.new(2021,01,14,11.5), end_at: DateTime.new(2021,01,14,12.5), name: "De Ziguinchor à Boké : accueillir, intégrer et circuler, des enjeux d'avenir",
description: "Échange sur l’historique et les tendances des migrations et mobilités sous régionales et internationales, les dynamiques de partage et gestion concertée des ressources, les facteurs de conflits et tensions, et les notions d’autochtone et allochtone dans un territoire partageant des ressources communes et des liens historiques.", event: event_grdr)
puts "Workshops created..."

puts "Updating workshops"
workshop1 = Workshop.find_by(name: "Bilan du programme actuel et nouvelles perspectives et défis pour Erasmus+ 2021-2027")
workshop1.update(visible: false)
workshop2 = Workshop.find_by(name: "Erasmus + 2021-2027 : nouvel élan et nouvelles opportunités")
workshop2.update(visible: false)
workshop3 = Workshop.find_by(name: "S’informer pour bien débuter avec Erasmus + 2021-2027")
workshop3.update(visible: false)
workshop5 = Workshop.find_by(name: "Acteurs de l’enseignement scolaire / Focus sur les opportunités Erasmus + 2021-2027")
workshop5.update(visible: false)
workshop6 = Workshop.find_by(name: "Acteurs de l’Enseignement et de la Formation Professionnels / Focus sur les opportunités Erasmus + 2021-2027")
workshop6.update(visible: false)
workshop7 = Workshop.find_by(name: "Acteurs de l’Enseignement supérieur / Focus sur les opportunités Erasmus + 2021-2027")
workshop7.update(visible: false)
workshop8 = Workshop.find_by(name: "Acteurs du secteur de la jeunesse et du sport / Focus sur les opportunités Erasmus + 2021-2027")
workshop8.update(visible: false)
workshop9 = Workshop.find_by(name: "Acteurs de l’Education des Adultes / Focus sur les opportunités Erasmus + 2021-2027")
workshop9.update(visible: false)

workshop10 = Workshop.find_by(name: "Enseignement scolaire")
workshop10.update(visible: false)
workshop11 = Workshop.find_by(name: "Enseignement & formations professionnels")
workshop11.update(visible: false)
workshop12 = Workshop.find_by(name: "Enseignement supérieur")
workshop12.update(visible: false)
workshop13 = Workshop.find_by(name: "Secteur jeunesse et sport")
workshop13.update(visible: false)
workshop14 = Workshop.find_by(name: "Education des adultes")
workshop14.update(visible: false)
puts "Workshops updated..."

puts "Creating participants..."
participant_grdr1 = Participant.create!(email: "amelie@agencecosmo.com", company: "Agence Cosmo", first_name: "Amélie", last_name: "Pol", position: "Directrice", organization: "Agence Cosmo", accepted_conditions: true)
puts "Participants created..."

puts "Creating bookings"
booking_grdr1 = Booking.create!(participant: participant_grdr1, workshop: workshop_grdr1)
puts "Bookings created"


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

puts "Creating participants..."
participant_grdr1 = Participant.create!(email: "amelie@agencecosmo.com", company: "Agence Cosmo", first_name: "Amélie", last_name: "Pol", position: "Directrice", organization: "Agence Cosmo", accepted_conditions: true)
puts "Participants created..."

puts "Creating bookings"
booking_grdr1 = Booking.create!(participant: participant_grdr1, workshop: workshop_grdr1)
puts "Bookings created"


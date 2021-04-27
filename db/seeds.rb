ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Updating users..."
user1 = User.find_by(email: "amelie@agencecosmo.com")
user1.update(password: "CosmoEvent")
user2 = User.find_by(email: "chloe@agencecosmo.com")
user2.update(password: "CosmoEvent")
puts "Users updated..."

puts "Finding events..."
event_grdr = Event.last
puts "Events found..."

puts "Finding workshops"
workshop_grdr1 = Workshop.find_by(name: "Le littoral ouest africain : à la croisée des enjeux de protection et d'exploitation")
# workshop_grdr1.update(start_at: DateTime.new(2021,06,10,10), end_at: DateTime.new(2021,06,10,11.5), name: "Le littoral ouest africain : à la croisée des enjeux de protection et d'exploitation", description: "Introduction sur les dynamiques et les évolutions du littoral suivi d’un échange sur les dynamiques et les mécanismes de protection environnementale des écosystèmes face aux dynamiques d’extraction des ressources renouvelables et non renouvelables.", event: event_grdr)
workshop_grdr2 = Workshop.find_by(name: "Le littoral ouest africain : un bassin d'emploi sous régional")
# workshop_grdr2.update(start_at: DateTime.new(2021,06,17,10), end_at: DateTime.new(2021,06,17,11.5), name: "Le littoral ouest africain : un bassin d'emploi sous régional", description: "Les opportunités économiques des territoires du littoral ouest africain : de la place de l’économie alimentaire dans la structuration de l’économie du littoral à la complémentarité des zones de production et consommation, en passant par l’exploitation durable des ressources naturelles et la place des jeunes et femmes dans les filières porteuses.", event: event_grdr)
workshop_grdr3 = Workshop.find_by(name: "De Ziguinchor à Boké : accueillir, intégrer et circuler, des enjeux d'avenir")
# workshop_grdr3.update(start_at: DateTime.new(2021,01,14,11.5), end_at: DateTime.new(2021,01,14,12.5), name: "De Ziguinchor à Boké : accueillir, intégrer et circuler, des enjeux d'avenir", description: "Échange sur l’historique et les tendances des migrations et mobilités sous régionales et internationales, les dynamiques de partage et gestion concertée des ressources, les facteurs de conflits et tensions, et les notions d’autochtone et allochtone dans un territoire partageant des ressources communes et des liens historiques.", event: event_grdr)
puts "Workshops found..."

puts "Finding participants..."
participant_grdr1 = Participant.find_by(email: "amelie@agencecosmo.com")
puts "Participants found..."

puts "Finding bookings"
booking_grdr1 = Booking.find_by(participant: participant_grdr1)
puts "Bookings found"

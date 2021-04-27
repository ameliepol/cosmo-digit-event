ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Updating users..."
user1 = User.find_by(email: "amelie@agencecosmo.com")
# user1.update(password: "CosmoEvent")
user2 = User.find_by(email: "chloe@agencecosmo.com")
# user2.update(password: "CosmoEvent")
puts "Users updated..."

puts "Finding events..."
event_grdr = Event.last
puts "Events found..."

puts "Finding workshops"
workshop_grdr1 = Workshop.find_by(name: "Table ronde 1 - Le littoral ouest africain : à la croisée des enjeux de protection et d’exploitation")
workshop_grdr1.update(start_at: DateTime.new(2021,06,10,9), end_at: DateTime.new(2021,06,10,10.5), name: "Table ronde 1 - Le littoral ouest africain : à la croisée des enjeux de protection et d’exploitation", description: "Les acteurs des régions du littoral sont confrontés à des dynamiques et mécanismes de protection environnementale des écosystèmes d’une part et à des dynamiques d’extraction des ressources d’autre part. Les échanges questionneront l’impact et le bilan de ces différents dispositifs de régulation de l’accès aux ressources renouvelables et non renouvelables de ces territoires.", speaker: "Gilles KLEITZ, Directeur du département Transition écologique et gestion des ressources naturelles de l'Agence Française de Développement\n
Marie Christine CORMIER SALEM, Chercheuse en sciences sociales à l'IRD et membre de l’UMR 'Patrimoines locaux et gouvernance'\n
Aissa REGALLA DE BARROS, Coordinatrice du Suivi de la Biodiversité de l’Institut de Biodiversité et Aire Protégée de (IBAP) en Guinée Bissau", event: event_grdr)
workshop_grdr2 = Workshop.find_by(name: "Table ronde 2 - Le littoral ouest africain : un bassin d’emploi sous régional")
workshop_grdr2.update(start_at: DateTime.new(2021,06,17,9), end_at: DateTime.new(2021,06,17,10.5), name: "Table ronde 2 - Le littoral ouest africain : un bassin d’emploi sous régional", description: "Les territoires du littoral ouest africains regorgent de ressources et d’opportunité économique, pourtant les jeunes, nombreux dans ces régions, ont un faible taux d’activité, avec de grandes différences entre les zones rurales et urbaines. Le débat permettra de mettre en avant quelles sont les opportunités économiques dans les filières porteuses du littoral ; quelle connexion entre les territoires ? Quelle est la place de l’économie alimentaire dans la structuration de l’économie du littoral ? On se questionnera sur comment rendre ces secteurs davantage attractifs et favoriser une insertion professionnelle adaptée ?", speaker: "Mamadou DIOP THIOUNE, Membre du Haut Conseil des Collectivités du Sénégal, membre du Comité national du dialogue social CNDS Pêche / Leader Pêche-Ecologie\n
Philipp HEINRIGS, Economiste, Chef d’unité et secrétariat du Club du Sahel et de l’Afrique de l’Ouest (CSAO/OCDE)", event: event_grdr)
workshop_grdr3 = Workshop.find_by(name: "Table ronde 3 - De Ziguinchor à Boké : accueillir, intégrer et circuler")
workshop_grdr3.update(start_at: DateTime.new(2021,06,24,9), end_at: DateTime.new(2021,06,24,10.5), name: "Table ronde 3 - De Ziguinchor à Boké : accueillir, intégrer et circuler", description: "La mobilité et migration en Afrique de l’ouest est souvent observée sous l’angle de départ vers l’Europe, pourtant la migration et mobilité sous régionale est un enjeu fort pour les territoires du littoral qui sont autant des terres d’accueil que de départ. L’échange portera sur l’historique et les tendances des migrations et mobilités sous régionales et internationales, les dynamiques de partage et gestion concertée des ressources, les facteurs de conflits et tensions, et les notions de l’altérité dans un territoire partageant des ressources communes et des liens historiques", speaker: "Sylvie BREDELOUP, Socio anthropologue - labo Movida (Sénégal/France)\n
Idrissa BARY, Chercheur associé au Centre d’Études Africaines, à l’EHESS et Consultant en projets de développement en Guinée\n
Mariama KESSO SOW, Économiste, Cheffe de file « Migration et Emploi des jeunes » Initiative prospective agricole et rurale (IPAR) au Sénégal", event: event_grdr)
puts "Workshops found..."

puts "Finding participants..."
participant_grdr1 = Participant.find_by(email: "amelie@agencecosmo.com")
puts "Participants found..."

puts "Finding bookings"
booking_grdr1 = Booking.find_by(participant: participant_grdr1)
puts "Bookings found"

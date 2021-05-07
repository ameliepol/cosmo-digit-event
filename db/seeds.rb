ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Finding users..."
user1 = User.find_by(email: "amelie@agencecosmo.com")
# user1.update(password: "CosmoEvent")
# user2 = User.find_by(email: "chloe@agencecosmo.com")
# user2.update(password: "CosmoEvent")
puts "Users found..."

puts "Finding events..."
event_grdr = Event.last
puts "Events found..."

puts "Updating workshops"
workshop_grdr1 = Workshop.find_by(name: "Table ronde 1 - Le littoral ouest africain : à la croisée des enjeux de protection et d’exploitation")
workshop_grdr1.update(start_at: DateTime.new(2021,06,10,9), end_at: DateTime.new(2021,06,10,10.5), name: "Table ronde 1 - Le littoral ouest africain : à la croisée des enjeux de protection et d’exploitation", description: "Les acteurs des régions du littoral sont confrontés d’une part à des dynamiques et mécanismes de protection environnementale des écosystèmes et, d’autre part, à des dynamiques d’extraction des ressources. Cette table ronde abordera l’impact et le bilan de ces différents dispositifs de régulation d’accès aux ressources renouvelables et non renouvelables sur ces territoires.", speaker: "Gilles KLEITZ, Directeur du département Transition écologique et gestion des ressources naturelles à l'Agence Française de Développement (AFD)\n
Marie Christine CORMIER SALEM (intervenant pressenti), Chercheuse en sciences sociales à l’Institut de Recherche pour le Développement (IRD) et membre de l’UMR 'Patrimoines locaux et gouvernance'\n
Aissa REGALLA DE BARROS, Coordinatrice du Suivi de la Biodiversité de l’Institut de Biodiversité et Aire Protégée de (IBAP) en Guinée Bissau", event: event_grdr)
workshop_grdr2 = Workshop.find_by(name: "Table ronde 2 - Le littoral ouest africain : un bassin d’emploi sous régional")
workshop_grdr2.update(start_at: DateTime.new(2021,06,17,9), end_at: DateTime.new(2021,06,17,10.5), name: "Table ronde 2 - Le littoral ouest africain : un bassin d’emploi sous régional", description: "Les territoires du littoral ouest africains regorgent de ressources et d’opportunités économiques. Pourtant, les jeunes, nombreux dans ces régions, ont un faible taux d’activité, marqué par de grandes différences entre les zones rurales et urbaines. Les échanges permettront de mettre en avant quelles sont les opportunités économiques qu’offrent les filières porteuses locales et de les questionner : Quelle connexion entre les territoires ? Quelle est la place de l’économie alimentaire dans la structuration de l’économie du littoral ? Comment rendre ces secteurs davantage attractifs et favoriser une insertion professionnelle adaptée ?", speaker: "Mamadou DIOP THIOUNE, Membre du Haut Conseil des Collectivités du Sénégal, Membre du Comité national du dialogue social (CNDS-Pêche) / Leader Pêche-Ecologie\n
Philipp HEINRIGS, Économiste principal, Secrétariat du Club du Sahel et de l’Afrique de l’Ouest (CSAO/OCDE)\n
Nelvina BARRETO (intervenant pressenti), Consultante internationale actuelle Directrice nationale de la BCAO pour la Guinée Bissau, ancienne Ministre de l’Economie, du Plan et de l’Intégration Régionale de la République de Guinée-Bissau", event: event_grdr)
workshop_grdr3 = Workshop.find_by(name: "Table ronde 3 - De Ziguinchor à Boké : accueillir, intégrer et circuler")
workshop_grdr3.update(start_at: DateTime.new(2021,06,24,9), end_at: DateTime.new(2021,06,24,10.5), name: "Table ronde 3 - De Ziguinchor à Boké : accueillir, intégrer et circuler", description: "Les mobilités humaines en Afrique de l’ouest sont souvent observées sous l’angle de départ vers l’Europe. Pourtant, migration et mobilité sous régionale sont un enjeu fort pour les territoires du littoral qui sont autant des terres d’accueil que de départ. Cette table ronde reviendra sur l’historique et les tendances des migrations et mobilités sous régionales et internationales mais aussi sur les dynamiques de partage et de gestion concertée des ressources, sur les facteurs de conflits et de tensions, et enfin sur les notions de l’altérité dans un territoire partageant des ressources communes et des liens historiques", speaker: "Sylvie BREDELOUP, Socio anthropologue - labo Movida (Sénégal/France)\n
Idrissa BARRY, Chercheur associé au Centre d’Études Africaines, à l’EHESS et Consultant en projets de développement (Guinée)\n
Mariama KESSO SOW, Économiste, Cheffe de file « Migration et Emploi des jeunes » Initiative prospective agricole et rurale (IPAR) au Sénégal", event: event_grdr)
puts "Workshops updated..."

puts "Finding participants..."
participant_grdr1 = Participant.find_by(email: "amelie@agencecosmo.com")
puts "Participants found..."

puts "Finding bookings"
booking_grdr1 = Booking.find_by(participant: participant_grdr1)
puts "Bookings found"

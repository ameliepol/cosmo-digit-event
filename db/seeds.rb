ActionMailer::Base.perform_deliveries = false

require 'date'

puts "Finding users..."
user1 = User.find_by(email: "amelie@agencecosmo.com")
user2 = User.find_by(email: "chloe@agencecosmo.com")
user3 = User.find_by(email: "sylvain.scherpereel@agence-erasmus.fr")
user4 = User.find_by(email: "gabriel.moreau@agence-erasmus.fr")
puts "Users found..."

puts "Finding events..."
event1 = Event.last
puts "Events found..."

puts "Updating workshops"
workshop1 = Workshop.find_by(name: "La mobilité des apprentis avec le programme Erasmus+")
# workshop1.update(name: "La mobilité des apprentis avec le programme Erasmus+")
# workshop1.update(start_at: DateTime.new(2021,11,10,10))
# workshop1.update(end_at: DateTime.new(2021,11,10,10.5))
# workshop1.update(description: "")
# workshop1.update(speaker: "Sylvain Scherpereel, Chargé de développement sur le secteur de l’enseignement et la formation professionnels, Agence Erasmus+ France / Education Formation")
workshop2 = Workshop.find_by(name: "Mobilités hybrides")
# workshop2.update(name: "Mobilités hybrides")
# workshop2.update(start_at: DateTime.new(2021,11,10,10.5))
# workshop2.update(end_at: DateTime.new(2021,11,10,11.5))
# workshop2.update(description: "→ Regards croisés sur l’intérêt de développer des échanges à distance et des projets de mobilité hybride")
# workshop2.update(speaker: "Lionel Clémençon, Département Promotion, Agence Erasmus+ France / Education Formation, \n
# Pierre Touillon, Conseiller en internationalisation des compétences, CCCA-BTP, \n
# Sandra Schmidt, Cheffe du Bureau Formation professionnelle, échanges universitaires et volontariat, Office franco-allemand pour la jeunesse (OFAJ), \n
# Hakim Monteville, Formateur mécanique, LEA-CFI, \n
# Stéphane Bouils, Directeur du CFA de la Chambre des métiers et de l’artisanat des Pyrénées orientales, \n
# Rita Festi, Chargée du développement des nouveaux projets/actions, Scuola Central Formazione (IT), \n
# Karine Perrier, Chargé de projet Ingénierie et Numérique, Pôle de formation Pasteur")
workshop3 = Workshop.find_by(name: "Mobilités et transition écologique")
# workshop3.update(name: "Mobilités et transition écologique")
# workshop3.update(start_at: DateTime.new(2021,11,10,11.5))
# workshop3.update(end_at: DateTime.new(2021,11,10,12))
# workshop3.update(description: "→ Regards croisés sur la prise en compte des enjeux liés à la transition écologique dans les projets de mobilité internationale ")
# workshop3.update(speaker: "Corinne Le Fay-Souloy, Conseillère technique, Agence Erasmus+ France / Education Formation, \n
# Eric Bastian, Formateur technique en aménagement paysager, CFPPA Savoir-Bugey, \n
# Freddy Ferret, Délégué associé, Fédération régionale des MFR de Nouvelle-Aquitaine, \n
# Sébastien Baillot, Responsable de l’institut des métiers du sanitaire et du génie climatique, Compagnons du Devoir et du Tour de France, \n
# Roxana Flavia Dam, Chargée de mobilité au centre de formation professionnelle EUC-SYD (DK)")
puts "Workshops updated..."


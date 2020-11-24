ActionMailer::Base.perform_deliveries = false

require 'date'

require 'date'

puts "Finding users..."
user1 = User.find_by(email: "amelie@agencecosmo.com")
user2 = User.find_by(email: "chloe@agencecosmo.com")
user3 = User.find_by(email: "cyril.dejean@agence-erasmus.fr")
user4 = User.find_by(email: "irina.dufaud@agence-erasmus.fr")
puts "Users found..."

puts "Finding events..."
event1 = Event.last
puts "Events found..."

puts "Updating workshops"
workshop1 = Workshop.find_by(name: "Conférence de cadrage « Bilan du programme actuel et nouvelles perspectives et défis pour Erasmus+ 2021-2027 »")
workshop1.update(description: "Madame Laure Coudret-Laut, directrice de l’Agence Erasmus + France Education/Formation\n
Monsieur Mathieu Roumegous, directeur de l'Agence Erasmus + France Jeunesse et Sport (confirmé)\n
Monsieur Jean-Michel Blanquer, ministre de l’Education nationale, de la Jeunesse et des Sports\n
Madame Laurence Farreng, eurodéputée française, membre de la commission Culture et Education (confirmée)\n
Madame Thémis Christophidou, directrice générale éducation, culture, jeunesse et sports, Commission européenne (confirmée)\n
Monsieur Bernard Beignier, recteur de la région académique Provence-Alpes-Côte-D’azur, recteur de l’académie d’Aix-Marseille (confirmé)")
workshop2 = Workshop.find_by(name: "Session transversale Education & Formation et Jeunesse: Erasmus 2021-2027 : architecture, budget, opportunités")
workshop2.update(description: "Cet atelier s’adresse à tous les participants quel que soit leur secteur et leur connaissance du programme Erasmus +.")
workshop3 = Workshop.find_by(name: "Session transversale Education & Formation : S’informer pour bien débuter dans Erasmus + 2021-2027")
workshop3.update(description: "Cet atelier s’adresse aux organismes qui souhaitent se lancer dans le programme Erasmus +.
Les structures qui sont en cours d’accréditation ou d’obtention d’une charte ou intéressées par tout autre type de projet Erasmus + trouveront les conseils pour bien démarrer leur projet.")
workshop4 = Workshop.find_by(name: "Interruption déjeuner")
workshop5 = Workshop.find_by(name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon établissement d’enseignement scolaire ?")
workshop5.update(description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 (projets de mobilité) et Action Clé2 (projets de coopération) du secteur de l’enseignement scolaire.")
workshop6 = Workshop.find_by(name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon établissement d’enseignement professionnel ?")
workshop6.update(description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur l’Enseignement et de la Formation Professionnels.")
workshop7 = Workshop.find_by(name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon établissement d’enseignement supérieur ?")
workshop7.update(description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur l’enseignement supérieur.")
workshop8 = Workshop.find_by(name: "Quelles opportunités offre le nouveau programme Erasmus+ à ma structure du secteur de la jeunesse ?")
workshop8.update(description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur de la jeunesse")
workshop9 = Workshop.find_by(name: "Quelles opportunités offre le nouveau programme Erasmus+ à mon organisation chargée de l’éducation des adultes ?")
workshop9.update(description: "Cet atelier s’adresse aux participants qui souhaitent approfondir les nouveautés des projets Action Clé1 et Action Clé2 du secteur de l’éducation des adultes.")

workshop10 = Workshop.find_by(name: "Enseignement scolaire")
workshop10.update(description: "Vos questions, nos réponses")
workshop11 = Workshop.find_by(name: "Enseignement & formations professionnels")
workshop11.update(description: "Vos questions, nos réponses")
workshop12 = Workshop.find_by(name: "Enseignement supérieur")
workshop12.update(description: "Vos questions, nos réponses")
workshop13 = Workshop.find_by(name: "Secteur jeunesse")
workshop13.update(description: "Vos questions, nos réponses")
workshop14 = Workshop.find_by(name: "Education des adultes")
workshop14.update(description: "Vos questions, nos réponses")
puts "Workshops updated..."


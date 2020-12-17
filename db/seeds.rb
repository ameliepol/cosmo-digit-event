ActionMailer::Base.perform_deliveries = false

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
workshop1 = Workshop.find_by(name: "Bilan du programme actuel et nouvelles perspectives et défis pour Erasmus+ 2021-2027")
# workshop1.update(description: "Madame Laure Coudret-Laut, directrice de l’Agence Erasmus + France Education/Formation\n
                              # Monsieur Mathieu Roumegous, directeur de l'Agence Erasmus + France Jeunesse et Sport\n
                              # Monsieur Jean-Michel Blanquer, ministre de l’Education nationale, de la Jeunesse et des Sports (sous réserve de confirmation)\n
                              # Madame Laurence Farreng, eurodéputée française, membre de la commission Culture et Education\n
                              # Madame Thémis Christophidou, directrice générale éducation, culture, jeunesse et sports, Commission européenne\n
                              # Monsieur Bernard Beignier, recteur de la région académique Provence-Alpes-Côte-D’azur, recteur de l’académie d’Aix-Marseille")
workshop2 = Workshop.find_by(name: "Erasmus + 2021-2027 : nouvel élan, nouvelles opportunités")
workshop2.update(name: "Erasmus + 2021-2027 : nouvel élan et nouvelles opportunités")
# workshop2.update(description: "Présentation générale de ce nouveau programme, plus ouvert, plus responsable et plus ambitieux. Cette séquence s’adresse à tous les acteurs de l’éducation, de la formation, de la jeunesse et du sport.")
workshop3 = Workshop.find_by(name: "S’informer pour bien débuter avec Erasmus + 2021-2027")
# workshop3.update(description: "Présentation orientée conseils et outils pour démarrer efficacement son futur projet de mobilités ou de coopération. Cette séquence s’adresse aux acteurs de l’éducation et de la formation qui veulent se lancer dans Erasmus +.")
workshop5 = Workshop.find_by(name: "Acteurs de l’enseignement scolaire / Focus sur les opportunités Erasmus + 2021-2027")
# workshop5.update(description: "Cette session s’adresse aux participants qui souhaitent approfondir les nouveautés des projets de mobilités ou de coopération du secteur de l’enseignement scolaire (de la petite enfance jusqu’au lycée général et/ou technologique).")
workshop6 = Workshop.find_by(name: "Acteurs de l’Enseignement et de la Formation Professionnels / Focus sur les opportunités Erasmus + 2021-2027")
# workshop6.update(description: "Cette session s’adresse aux participants qui souhaitent approfondir les nouveautés des projets de mobilités ou de coopération du secteur de l’Enseignement et de la Formation Professionnels (lycée professionnel, CFA, organisme de formation et d’insertion, …).")
workshop7 = Workshop.find_by(name: "Acteurs de l’Enseignement supérieur / Focus sur les opportunités Erasmus + 2021-2027")
# workshop7.update(description: "Cette session s’adresse aux participants qui souhaitent approfondir les nouveautés des projets de mobilités ou de coopération du secteur de l’enseignement supérieur (universités, écoles, instituts, lycées avec STS, CFA du supérieur, …)")
workshop8 = Workshop.find_by(name: "Acteurs du secteur de la jeunesse et du sport / Focus sur les opportunités Erasmus + 2021-2027")
# workshop8.update(description: "Cette session s’adresse aux participants qui souhaitent approfondir les nouveautés des projets de mobilités ou de coopération du secteur de la jeunesse et du sport")
workshop9 = Workshop.find_by(name: "Acteurs de l’Education des Adultes / Focus sur les opportunités Erasmus + 2021-2027")
# workshop9.update(description: "Cette session s’adresse aux participants qui souhaitent approfondir les nouveautés des projets de mobilités ou de coopération du secteur de l’éducation des adultes (économie sociale et solidaire, éducation populaire, action sociale, …).")

workshop10 = Workshop.find_by(name: "Enseignement scolaire")
# workshop10.update(description: "Vos questions, nos réponses")
workshop11 = Workshop.find_by(name: "Enseignement & formations professionnels")
# workshop11.update(description: "Vos questions, nos réponses")
workshop12 = Workshop.find_by(name: "Enseignement supérieur")
# workshop12.update(description: "Vos questions, nos réponses")
workshop13 = Workshop.find_by(name: "Secteur jeunesse et sport")
# workshop13.update(description: "Vos questions, nos réponses")
workshop14 = Workshop.find_by(name: "Education des adultes")
# workshop14.update(description: "Vos questions, nos réponses")
puts "Workshops updated..."


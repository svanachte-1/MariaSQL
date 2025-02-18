-- Insertion des auteurs
INSERT INTO Auteur (nom, prenom, pays_origine, annee_naissance) VALUES
('Hugo', 'Victor', 'France', '1802-02-26'),
('Austen', 'Jane', 'Angleterre', '1775-12-16'),
('Tolkien', 'J.R.R.', 'Afrique du Sud', '1892-01-03'),
('Rowling', 'J.K.', 'Royaume-Uni', '1965-07-31');

-- Insertion des genres littéraires
INSERT INTO Genre_Litteraire (titre_genre_litteraire) VALUES
('Roman'),
('Science-Fiction'),
('Fantastique'),
('Poésie'),
('Biographie');

-- Insertion des livres
INSERT INTO Livre (titre, annee_publication, genre_litteraire_id) VALUES
('Les Misérables', '1862-01-01', 1),
('Orgueil et Préjugés', '1813-01-28', 1),
('Le Seigneur des Anneaux', '1954-07-29', 3),
('Harry Potter à l''école des sorciers', '1997-06-26', 3),
('Le Capital', '1867-09-14', 5);

-- Insertion des membres
INSERT INTO Membre (nom, prenom, adresse, date_inscription) VALUES
('Dupont', 'Jean', '10 rue de Paris, 75001 Paris', '2023-01-15'),
('Martin', 'Sophie', '5 avenue des Champs, 69002 Lyon', '2023-02-20'),
('Durand', 'Paul', '23 boulevard Haussmann, 75009 Paris', '2023-03-05'),
('Bernard', 'Claire', '12 rue Nationale, 59000 Lille', '2023-04-10');

-- Insertion des emprunts
INSERT INTO Emprunter (livre_id, membre_id, date_emprunt_sortie, date_emprunt_retour) VALUES
(1, 1, '2024-01-10', '2024-01-20'),
(3, 2, '2024-01-12', NULL),
(4, 3, '2024-01-14', '2024-01-25'),
(2, 1, '2024-01-15', NULL);

-- Insertion des relations entre auteurs et livres
INSERT INTO Ecrire (livre_id, auteur_id) VALUES
(1, 1), -- Victor Hugo a écrit "Les Misérables"
(2, 2), -- Jane Austen a écrit "Orgueil et Préjugés"
(3, 3), -- J.R.R. Tolkien a écrit "Le Seigneur des Anneaux"
(4, 4); -- J.K. Rowling a écrit "Harry Potter à l'école des sorciers"

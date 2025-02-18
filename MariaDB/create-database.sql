USE Analyse_bibliotheque;
-- Table pour les auteurs
CREATE TABLE IF NOT EXISTS Auteur (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    pays_origine VARCHAR(255),
    annee_naissance DATE
);

-- Table pour les genres littéraires
CREATE TABLE IF NOT EXISTS Genre_Litteraire (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre_genre_litteraire VARCHAR(255) NOT NULL
);

-- Table pour les livres
CREATE TABLE IF NOT EXISTS Livre (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    annee_publication DATE,
    genre_litteraire_id INT,
    FOREIGN KEY (genre_litteraire_id) REFERENCES Genre_Litteraire(id) ON DELETE SET NULL
);

-- Table pour les membres
CREATE TABLE IF NOT EXISTS Membre (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255),
    date_inscription DATE NOT NULL
);

-- Table pour les emprunts
CREATE TABLE IF NOT EXISTS Emprunter (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livre_id INT NOT NULL,
    membre_id INT NOT NULL,
    date_emprunt_sortie DATE NOT NULL,
    date_emprunt_retour DATE,
    FOREIGN KEY (livre_id) REFERENCES Livre(id) ON DELETE CASCADE,
    FOREIGN KEY (membre_id) REFERENCES Membre(id) ON DELETE CASCADE
);

-- Table pour les relations entre auteurs et livres
CREATE TABLE IF NOT EXISTS Ecrire (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livre_id INT NOT NULL,
    auteur_id INT NOT NULL,
    FOREIGN KEY (livre_id) REFERENCES Livre(id) ON DELETE CASCADE,
    FOREIGN KEY (auteur_id) REFERENCES Auteur(id) ON DELETE CASCADE
);

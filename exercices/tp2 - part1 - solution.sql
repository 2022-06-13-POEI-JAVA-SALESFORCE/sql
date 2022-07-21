create database organismeformation;
create user adminformation;
GRANT ALL PRIVILEGES ON organismeformation.* TO 'adminformation' 

-- creation des tables
CREATE TABLE centre_formation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    adresse VARCHAR(350),
    annee INT
);

CREATE TABLE formateur (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    taux INT DEFAULT 350
);

CREATE TABLE classe (
    code VARCHAR(50) NOT NULL PRIMARY KEY,
    id_centre_formation INT NOT NULL,
    id_formateur INT NOT NULL,
    nbr_apprenant INT DEFAULT 4,
    CONSTRAINT fk_centre_formation FOREIGN KEY(id_centre_formation) REFERENCES centre_formation(id),
    CONSTRAINT fk_formateur FOREIGN KEY(id_formateur) REFERENCES formateur(id)
);

-- insertion des données
insert into centre_formation values(NULL, 'Special Formation', '3 rue du spécial, 31100 Toulouse', 1999);
insert into centre_formation values(NULL, 'SudOuest Formation', '444 route du Sud, 31100 Toulouse', 2004);
	
insert into formateur values(NULL, 'Leblanc', 'José', 400);
insert into formateur values(NULL, 'Bendola', 'Yemba', NULL);
insert into formateur values(NULL, 'Saro', 'Sarah', 550);
insert into formateur values(NULL, 'Bouyal', 'Eloise', 360);
	
insert into classe values('JAVA_001', 1, 1, 15);
insert into classe values('JAVA_002', 1, 2, 36);
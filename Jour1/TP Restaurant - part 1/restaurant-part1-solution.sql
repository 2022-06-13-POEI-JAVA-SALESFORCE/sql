-- création utilisateur
create database restaurant;
create user restaurateur;
GRANT ALL PRIVILEGES ON restaurant.* TO 'restaurateur'

-- création tables
CREATE TABLE restaurant (
	code VARCHAR(6) NOT NULL PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,
	adresse TEXT NOT NULL,
	nb_table INTEGER DEFAULT 10 NOT NULL,
	statut BOOLEAN NOT NULL
);

CREATE TABLE salarie (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
	prenom VARCHAR(50),
	salaire DECIMAL DEFAULT 1645.58 NOT NULL,
	code_restaurant VARCHAR(6) NOT NULL,
	CONSTRAINT fk_salarie FOREIGN KEY(code_restaurant) REFERENCES restaurant(code)
);

CREATE TABLE menu (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nom VARCHAR(50) NOT NULL,
	prix DECIMAL(4,2) DEFAULT 10 NOT NULL,
	code_restaurant VARCHAR(6) NOT NULL,
	CONSTRAINT fk_menu FOREIGN KEY(code_restaurant) REFERENCES restaurant(code)
);

	
CREATE TABLE client (
	num VARCHAR(20) NOT NULL PRIMARY KEY,
	budget_max DECIMAL(5,2) NOT NULL
);
		
CREATE TABLE repas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	date DATE NOT NULL,
	prix_paye DECIMAL(6,2) NOT NULL,
	code_restaurant VARCHAR(6) NOT NULL,
	num_client VARCHAR(20) NOT NULL,
	CONSTRAINT fk_repas_1 FOREIGN KEY(code_restaurant) REFERENCES restaurant(code),
	CONSTRAINT fk_repas_2 FOREIGN KEY(num_client) REFERENCES client(num)
);
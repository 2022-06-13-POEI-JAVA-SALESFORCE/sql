create database site_internet;

create user usersite;

GRANT ALL PRIVILEGES ON site_internet.* TO 'usersite';

--  création des tables
CREATE TABLE site (
    url VARCHAR(50) PRIMARY KEY NOT NULL,
    langue VARCHAR(50)
);

CREATE TABLE page (
    id INT PRIMARY KEY AUTO_INCREMENT,
    url_site VARCHAR(100) UNIQUE NOT NULL,
    titre VARCHAR(50) NOT NULL,
    contenu VARCHAR(50),
    nb_ligne INT,
    date_creation DATE DEFAULT NOW(),
    date_miseajour DATE,
    CONSTRAINT fk_site FOREIGN KEY(url_site) REFERENCES site(url)
);

-- ajout de lignes
insert into site(url, langue) values('http://mysite.fr', 'FR');

insert into page(id_site, titre, contenu, nb_ligne) values(1, 'Accueil', 'Page dacceuil', 300);
insert into page(id_site, titre, contenu, nb_ligne) values(1, 'Page 1', 'Ma premiere page', 128);
insert into page(id_site, titre, contenu, nb_ligne) values(1, 'Page 2', 'Ma troisieme page', 489);
insert into page(id_site, titre, contenu, nb_ligne) values(1, 'Page 3', 'Ma quatrieme page', 999);
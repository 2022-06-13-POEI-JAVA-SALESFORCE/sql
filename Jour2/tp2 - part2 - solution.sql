select * from classe;
select * from centre_formation ORDER BY annee;
select nom from centre_formation WHERE annee < 2000;
select code, nbr_apprenant from classe WHERE code LIKE '%java%'
	OR code LIKE '%Java%'
	OR code LIKE '%JAVA%';
select nom from centre_formation WHERE annee < 2000;
select * from formateur WHERE taux > 299 AND taux < 501;  / select * from formateur WHERE taux BETWEEN 299 AND 501;
select code from classe ORDER BY nbr_apprenant DESC LIMIT 3;
--Creation de la table etudiant

CREATE TABLE etudiant(
id SERIAL PRIMARY KEY,
nom VARCHAR (50),
prenom VARCHAR(50),
age INT ,
ville VARCHAR (50)
);

--insertion des données dans la table etudiant


INSERT INTO etudiant (nom, prenom, age, ville)

values

('Ali','Moussa',20,'Niamey'),
('Amina','Issa',22,'Zinder'),
('Oumar','Sani',19,'Maradi'),
('Mahamane','Ibrahim',21,'Tahoua');

--Premieres requetes SQL


SELECT * 
FROM etudiant;

--Afficher nom et ville

SELECT nom, ville
FROM  etudiant;

--STRUCTURE D'UNE REQUETE SQL
-- select    colonne   --quoi afficher
-- from      table     --depuis quelle table
--where      condition  --filtre 
--group by    colonne    -- regrouper
--having       condition --filtrer groupe
--order by     colonne    --trier
--limit        n;           --limiter


---afficher les etudiant de niamey

SELECT* 
FROM etudiant
WHERE ville ='Niamey';

--affcher les etudiants dont l'age est supeerieur ou egale à 21
SELECT* 
FROM etudiant
WHERE age >= 21; 

--trier les données

SELECT nom,prenom,age
FROM etudiant
ORDER BY age DESC;

--limiter les nombre de resultat
SELECT *
FROM etudiant
LIMIT  3 ;

--afficher les etudiants  de Niamey,triés par age decroissante et limiter le resultat à 2

SELECT*
FROM etudiant
WHERE ville= 'Niamey'
ORDER BY age DESC
LIMIT 2;


                 --EXERCICE PRATIQUE
--creation de la table cours( id,titre,categorie,durée_heures)

CREATE TABLE cours(
id SERIAL PRIMARY KEY,
titre VARCHAR (100),
categorie VARCHAR(50) NOT NULL,
durée_heures INT NOT NULL
);

--inserer les données 

INSERT INTO cours (titre, categorie, durée_heures)
values
('intro à sql','base de donnee', 8 ),
('Excel pour debutant','bureatique', 12),
('Power BI','Busness Inteligence',15),
('python','programation',20),
('SPSS','Analyde de donnees',10);


--1 Afficher tous les cours

SELECT*
FROM cours;


--2 afficher uniquement le titre et la categorie

SELECT titre, categorie
FROM cours;


--3 afficher les cours dont la durée est superieur à 10h

SELECT*
FROM cours
WHERE durée_heures>10;




--4 trier les cours du plus long au plus cours

SELECT*
FROM cours
ORDER BY durée_heures DESC;


--5 Afficher seulement les trois premiers cours

SELECT*
FROm cours
LIMIT 3;






















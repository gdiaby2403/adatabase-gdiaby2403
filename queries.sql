-- Q1 Combien d'objets avons-nous reçus le mois dernier, et quel poids total ?

SELECT COUNT(o.id) AS "objets_reçus_le_mois_dernier",
SUM(o.poids) "poids total"
FROM depot
JOIN objet o ON o.depot_id = depot.id 
WHERE date_depot BETWEEN '2026-07-01' AND '2026-07-31';

-- Q2 Quels objets sont actuellement en rayon, et depuis combien de temps ?

SELECT id, libelle, CURRENT_date-date_mise_en_rayon AS "jours_en_rayon", (CURRENT_date-date_mise_en_rayon)/30  AS "mois_en_rayon"
FROM objet
WHERE statut = 'en rayon';

-- Q3 Quelle catégorie se vend le mieux ? Laquelle rapporte le plus ?

SELECT c.libelle, COUNT(categorie_id) AS "objet_vendu_par_categorie", SUM(prix) AS "montant_total_par_categorie"
FROM objet o
JOIN categorie c ON c.id = o.categorie_id
WHERE statut = 'vendu'
GROUP BY c.id, c.libelle
ORDER BY "objet_vendu_par_categorie" desc, "montant_total_par_categorie" desc;


-- Q4 Combien d'heures de bénévolat ont été consacrées à la réparation cette année ?

SELECT SUM(duree) AS "heure_de_reparation_benevole"
FROM reparation
WHERE to_char(date_debut, 'YYYY') like '%2026%';

-- Q5 Quel est le taux de réussite des réparations, par bénévole et globalement ?

SELECT benevole_id,COUNT(resultat) AS "reparation_reussi"
FROM reparation
WHERE resultat = 'reussi'
GROUP BY benevole_id;

-- Q6 Quelles personnes nous ont fait plus de trois dépôts ?

SELECT p.prenom, COUNT(personne_id) AS "nombre_depots"
FROM depot d
JOIN personne p ON p.id = d.personne_id
GROUP BY p.prenom, personne_id
HAVING COUNT(personne_id) > 3;


-- Q7 Quel poids total avons-nous détourné de la déchetterie (tout ce qui n'est pas recyclé) ?

SELECT SUM(poids) "poids_total_détourné en kg", ROUND(SUM(poids/1000),3) "poids_total_détourné en tonnes"
FROM objet
WHERE statut != 'recyclé';

-- Q8 Quel est le taux de présence réelle sur nos ateliers ?

-- Q9 Quels bénévoles ont la compétence « électricité » et sont disponibles pour animer un atelier ?

-- Q10 Quels objets sont en rayon depuis plus de six mois et devraient être sortis ?

SELECT id, libelle, CURRENT_date-date_mise_en_rayon AS "jours_en_rayon", (CURRENT_date-date_mise_en_rayon)/30  AS "mois_en_rayon"
FROM objet
WHERE statut = 'en rayon' AND (CURRENT_date-date_mise_en_rayon)/30 > 6;









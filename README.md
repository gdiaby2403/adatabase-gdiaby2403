# La Remise — Base de données SQL

Projet réalisé dans le cadre du cursus **Ada Tech School**.

##  Présentation du projet

**La Remise** est une recyclerie / ressourcerie qui collecte, répare, valorise et revend des objets pour leur donner une seconde vie. 

L'objectif de ce projet est de concevoir, modéliser  une base de données relationnelle sous PostgreSQL afin d'aider Malika à gérer l'activité de la ressourcerie associative (suivi des dépôts et de la collecte d'objets, des ventes et des participations aux ateliers).

---

##  Technologies utilisées

* **SGBD :** PostgreSQL 16
* **Conteneurisation :** Docker & Docker Compose
* **Client SQL :** Beekeeper Studio
* **Langage :** SQL 

---

##  Structure du projet

   **Conception**

* `dictionnaire.md`: définitions des données avec type et contraintes d'intégrité.
* `decisions.md`: relevé des ambigüités lors de l'entretien et prise de décisions pour la conception de la base.
* `schema-ea.png` : Création des tables, clés primaires et cardinalités.
* `schema-relationnel.md` : relations, clés étrangères et tables d'associations (R1,R2,R3).
* `arbre-dependances.png` : modélisation des dépendances entre table.


   **Creation**

* `docker-compose.yml` : Configuration du conteneur PostgreSQL.
* `migration_up.sql` : Script de création de la structure de la base de données (création des tables, des types ENUM, des clés primaires/étrangères et des contraintes d'intégrité).
* `migration_down.sql` : Script de suppression complète de la structure (DROP TABLE, suppression des types)
* `seed.sql` : Insertion du jeu de données de test (dépôts, objets, catégories, ventes, ateliers, etc.).
* `queries.sql` : Requêtes SQL répondant aux besoins d'analyse de La Remise.

---

##  Modèle de données

La base est structurée autour des entités principales suivantes :

* **Personnes**: Gestion des usagers,déposeurs, acheteurs et participants.
* **Benevoles & Compétences** : Gestion du rôle bénévole de la ressourcerie, de leur compétence 
* **Dépôts :** Enregistrement des flux d'arrivée (boutique, collecte à domicile) et dates associées.
* **Objets & Catégorie:** Suivi du cycle de vie des objets (état : *bon état, à réparé, hors-service*, statut : *arrivée, en réparation, en rayon, vendu, recyclé*), catégories, poids, date de mise en rayon et prix.
* **Ventes :** Suivi des transactions et chiffre d'affaires.
* **Ateliers & Inscriptions :** Gestion des ateliers, inscriptions et taux de présence réelle.

---

##  Lancement du projet

avec Docker


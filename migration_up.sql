CREATE TYPE type_depot AS ENUM ('depot en boutique', 'collecte a domicile')
CREATE TYPE etat_arrivee AS ENUM ('bon etat', 'a reparer', 'hors-service')
CREATE TYPE statut_objet AS ENUM ('arrivee', 'en reparation', 'en rayon', 'vendu', 'recyclé')
CREATE TYPE resultat_reparation AS ENUM ('reussi', 'echouer')
CREATE TYPE mode_paiement AS ENUM ('especes', 'carte', 'cheque')


CREATE TABLE personne (
    id SERIAL PRIMARY KEY,
    prenom VARCHAR(50) NOT NULL,
    telephone INTEGER NOT NULL,
    adherent BOOLEAN DEFAULT false

);

CREATE TABLE benevole (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE,
    prenom VARCHAR(50) NOT NULL,
    date_arrive DATE NOT NULL ,
    
);

CREATE TABLE competence (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL,
    );

CREATE TABLE vente (
    id SERIAL PRIMARY KEY,
    date_vente DATE NOT NULL ,
    prix_vente NUMERIC(10,2) NOT NULL,
    paiement mode_paiement  NOT NULL,
);

CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL UNIQUE,
);

CREATE TABLE depot (
    id SERIAL PRIMARY KEY,
    date_depot DATE NOT NULL,
    personne_id INTEGER NOT NULL REFERENCES personne(id)
);

CREATE TABLE atelier (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL UNIQUE,
    date_atelier DATE NOT NULL,
    benevole_id INTEGER NOT NULL REFERENCES benevole(id),
    places INTEGER NOT NULL,
    duree INTEGER NOT NULL
);

CREATE TABLE competence_benevole (
    competence_id INTEGER NOT NULL,
    benevole_id INTEGER NOT NULL,
    PRIMARY KEY (competence_id,benevole_id)
    );

CREATE TABLE objet (
    id SERIAL PRIMARY KEY,
    depot_id INTEGER NOT NULL REFERENCES depot(id),
    categorie_id VARCHAR(50) NOT NULL REFERENCES categorie(id)
    libelle VARCHAR(50) NOT NULL,
    poids INTEGER NOT NULL,
    etat etat_arrivee NOT NULL ,
    prix NUMERIC(10,2),
    vente_id INTEGER REFERENCES vente(id),
    
);

CREATE TABLE incription (
    personne_id INTEGER NOT NULL REFERENCES personne(id),
    atelier_id INTEGER NOT NULL REFERENCES atelier(id)
    date_inscription DATE NOT NULL,
    presence BOOLEAN DEFAULT true,
    PRIMARY KEY (benevole_id, atelier_id)
);

CREATE TABLE reparation (
    id SERIAL PRIMARY KEY
    benevole_id INTEGER NOT NULL REFERENCES benevole(id),
    objet_id INTEGER NOT NULL REFERENCES objet(id),
    date_debut DATE NOT NULL,
    duree INTEGER NOT NULL,
    resultat resultat_reparation NOT NULL,
);







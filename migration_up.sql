CREATE TYPE etat_arrivee AS ENUM ('bon etat', 'a reparer', 'hors-service')
CREATE TYPE statut_objet AS ENUM ('arrivee', 'en reparation', 'en rayon', 'vendu', 'recyclé')
CREATE TYPE type_depot AS ENUM ('depot en boutique', 'collecte a domicile')
CREATE TYPE mode_paiement AS ENUM ('especes', 'carte', 'cheque')
CREATE TYPE resultat AS ENUM ('reussi', 'echouer')




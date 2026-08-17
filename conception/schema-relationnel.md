Objet(<b>numEtiquette<b>, libelle, poids, etatArrive, prixEnRayon)
Categorie(<b>id,#numEtiquette_Objet,libelle )
Depot(<b>id<b>,#numEtiquette_Objet,type, date)
Vente (<b>id<b>,#numEtiquette_Objet, date, prixReelVente, modePaiement)

Personne(<b>id<b>,#idDepot, nom, prenom, adresse, telephone, mail, numAdherent, datedebutAdhesion, dateFinAdhesion)
Atelier(<b>id<b>, #idBenevole, libelle, date, dureeMinutes, nbre_place )
S'inscrit(<b>id(idPersonne,idAtelier)<b>, dateInscription, presenceAtelier)

Benevole(<b>id<b>,nom, prenom, dateArrive, #idReparation)
Competence(<b>id<b>, libelle)
Possede(<b>#idBenevole,#idCompetence<b>)
Reparation(<b>id<b>,#numEtiquette_Objet, dateDebut, duree, résultat )
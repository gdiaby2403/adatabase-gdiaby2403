Objet(<b>numEtiquette<b>,#idCategorie,#idVente,#idDepot, #idReparation libelle, poids, etatArrive, prixEnRayon)
Categorie(<b>id,libelle )
Depot(<b>id<b>, #idPersonne,type, date)
Vente (<b>id<b>, date, prixReelVente, modePaiement)

Personne(<b>id<b>, nom, prenom, adresse, telephone, mail, numAdherent, datedebutAdhesion, dateFinAdhesion)
Atelier(<b>id<b>, #idBenevole, libelle, date, dureeMinutes, nbre_place )
Inscription((<b>#idPersonne,#idAtelier)<b>, dateInscription, presenceAtelier)

Benevole(<b>id<b>,#idAtelier,nom, prenom, dateArrive)
Competence(<b>id<b>, libelle)
CompetenceBenevole((<b>#idBenevole,#idCompetence<b>))
Reparation(<b>id<b>,#idBenevole, dateDebut, duree, résultat)
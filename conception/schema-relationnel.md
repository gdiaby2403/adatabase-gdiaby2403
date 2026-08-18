Objet(<b>numEtiquette<b>,#idCategorie,#idVente,#idDepot, libelle, poids, etatArrive, prix)

Categorie(<b>id,libelle )

Depot(<b>id<b>, #idPersonne,type, date)

Vente (<b>id<b>, date, prixVente, modePaiement)

Personne(<b>id<b>, nom, prenom, adresse, telephone, adherent)

Atelier(<b>id<b>, #idBenevole, libelle, date, duree, places )

Inscription((<b>#idPersonne,#idAtelier)<b>, dateInscription, presenceAtelier)

Benevole(<b>id<b>,nom, prenom, dateArrive)

Competence(<b>id<b>, libelle)

CompetenceBenevole((<b>#idBenevole,#idCompetence<b>))

Reparation(<b>id<b>,#idBenevole,#idObjet,dateDebut, duree, résultat)
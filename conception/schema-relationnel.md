Objet(<b>numEtiquette<b>,#idCategorie,#idVente,#idDepot, libelle, poids, etatArrive, statut, prix, dateMiseEnRayon)

Categorie(<b>id,libelle )

Depot(<b>id<b>, #idPersonne,typeDepot, dateDepot)

Vente (<b>id<b>, dateVente, prixVente, modePaiement)

Personne(<b>id<b>, nom, telephone, adherent)

Atelier(<b>id<b>, #idBenevole, libelle, dateAteleir, duree, places )

Inscription((<b>#idPersonne,#idAtelier)<b>, dateInscription, presenceAtelier)

Benevole(<b>id<b>,nom, prenom, dateArrive)

Competence(<b>id<b>, libelle)

CompetenceBenevole((<b>#idBenevole,#idCompetence<b>))

Reparation(<b>id<b>,#idBenevole,#idObjet,dateDebut, duree, résultat)
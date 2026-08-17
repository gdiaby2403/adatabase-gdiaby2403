| Nom | Description | Type | Taille | Contraintes | Remarques |
| :--- | :--- | :--- | :--- | :--- | :--- |
| NumEtiquette | Numero d'étiquette de l'objet | Numerique | | identifiant unique, généré automatiquement | |
| LibelleObjet | Nom de l'objet | Texte | 50 | Obligatoire | |
| PoidsObjet | Poids de l'objet | Numerique | | Obligatoire | en kg |
| EtatArrive| Etat d'usure de l'objet lors du dépot | Enum | | Obligatoire | Trois états : bon état, à réparer, hors-service |
| PrixObjet | Prix de l'objet en rayon en euros | Numerique |  | | |
| StatutObjet | Statut de l'objet | Enum | | Obligatoire | Cinq états : arrivé, en réparation, en rayon, vendu, recyclé |
| LibelleCategorie | Libellé des catégories d'objet | Texte | 50 | Obligatoire | |
| TypeDepot | Comment l'objet a été collecté | Enum | | Obligatoire | Deux états : dépôt en boutique, collecte à domicile|
| DateDepot | Date de dépôt d'un objet | Date | | Obligatoire | |
| NomPersonne | Nom de la personne | Texte | 50 | Obligatoire | |
| TelephonePersonne | Numero de téléphone de la personne | Numerique | | | |
| Adherent | Si la personne est adherente ou non | Booléen |  | Obligatoire | Faux par défaut |
| DateVente | Date de la vente de l'objet | Date | | Obligatoire | |
| PrixVente | Prix réel de vente | Numerique | | Obligatoire | |
| ModeDePaiement | Moyen de paiement utilisé lors de l'achat | Enum | | Obligatoire | Trois états : espèces, carte, chèque |
| DateReparation | Date de réparation d'un objet | Date | | Obligatoire | |
| DureeHeure | Duree de réparation d'un objet| Numerique | | Obligatoire | en heure |
| Resultat | Si une réparation est réussi ou non | Enum | | | deux états : réussi ou échoué |
| NomBenevole | Nom du bénévole | Texte | 50 | Obligatoire | |
| PrenomBenevole | Prenom du bénévole | Texte | 50 | Obligatoire | |
| Telephone | Numero de telephone du benevole | Numerique | | Obligatoire | |
| Adresse | Adresse du benevole | Texte | 50 | Obligatoire | |
| Mail | Adresse mail du bénévole | Texte | 50 | | |
| DateArrive | date à laquelle le bénévole a rejoint l'association | Date | | Obligatoire | |
| LibelleCompetence | libelle de la competence | Texte | 50 | Obligatoire | |
| LibelleAtelier | intituler de l'atelier | Texte | 50 | Obligatoire | |
| DateAtelier | date de l'atelier | Date | | | |
| DureeAtelier| Duree de l'atelier | Numerique | | | |
| NbrePlace | Nombre de place de l'atelier | Numerique | | | |

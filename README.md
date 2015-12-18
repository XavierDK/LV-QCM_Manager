# LV-QCM_Manager

## Mise en contexte

Le passage des QCM est une étape cruciale durant le workflow des recrutements. La création d'un outil afin d'optimiser cette étape, aussi bien en terme de simplicité de passage que de la correction, devient un besoin important.

## Liste des fonctionnalités

Les fonctionnalités seront découpées en deux sections distinctes; celles utiles pour un candidat et celles utiles pour l'administration des QCM et des candidats.

### Le candidat

- Connexion / Inscription d'un candidat
- Choix du questionnaire dans la liste de ceux disponibles
- Ecran démarré avec un bouton "Start" lançant le QCM ainsi que le timer
- Apres l'appuie sur le bouton "Start", les questions sont affichées dans l'ordre a l'écran avec des boutons "précédente"/"suivante" selon le cas pour naviguer entre les questions
- Trois type de questions seront disponibles
	- La question "simple", permettant de choisir entre la/les bonnes réponses parmis celles disponibles
	- La question "vrai/faux", demandant au candidat de désigner la bonne affirmation pour chaque proposition concernant l'énoncé
	- La question "liste", demandant au candidat de sélectionner les affirmations correspondant aux propositions de la question dans une liste (permet de remplacer les questions de tracage de traits entre deux listes)
- Après la fin des questions ou du temps, le candidat est remercié.
	 

### L'administration

- Connexion avec un compte ayant les droit d'administration
- Possibilité de créer, supprimer, modifier un QCM
- Accès aux résultats des candidats pour un QCM donné avec les questions auxquelles il s'est trompé


## Mockups

Un PSD est disponible dans le dossier Resources

## Technos utilisées

- Swift
- Parse
- ReactiveCocoa ou RxSwift
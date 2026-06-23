# online-retail-sql-analysis-
SQL analysis of an e-commerce dataset using PostgreSQL


1. Objectif du projet :
   
Ce projet a pour objectif d'analyser les données de ventes d'un e-commerce britannique afin d'en extraire des insights business concrets : identification des produits les plus rentables, évolution du chiffre d'affaires dans le temps, comportement des clients et taux de fidélisation. L'ensemble de l'analyse est réalisé en SQL avec PostgreSQL, depuis l'exploration et le nettoyage des données brutes jusqu'aux requêtes analytiques avancées.

2. Dataset :

Dataset public issu de Kaggle, contenant plus de 500 000 transactions d'un grossiste e-commerce britannique entre décembre 2010 et décembre 2011. Chaque ligne représente un article commandé, avec les informations de facturation, produit, quantité, prix unitaire, client et pays. Le dataset présente des caractéristiques réalistes : données manquantes, doublons, commandes annulées et valeurs aberrantes, ce qui en fait un bon support pour un travail de nettoyage complet.

https://www.kaggle.com/datasets/ulrikthygepedersen/online-retail-dataset 

3. Stack technique :

Pour ce projet j'ai choisi d'utiliser PostgreSQL comme base de données relationnelle, déployé via Docker afin de garantir un environnement isolé et reproductible, ce qui correspond aux pratiques utilisées en entreprise. L'administration de la base et l'exécution des requêtes ont été réalisées via pgAdmin, une interface graphique qui permet de visualiser facilement la structure des tables et les résultats des requêtes.
- PostgreSQL 16
- Docker 27
- pgAdmin 4

4. Démarche :
   
a) Exploration des données :

Avant de toucher aux données, j'ai commencé par une phase d'exploration complète pour comprendre la structure du dataset et identifier les problèmes : valeurs manquantes, doublons, valeurs aberrantes, commandes annulées et codes produits bizarres. Cette étape est essentielle pour nettoyer les données de manière réfléchie plutôt qu'aveugle.

b) Nettoyage des données :

Afin de préserver les données brutes, j'ai créé une copie de la table originale sur laquelle j'ai appliqué toutes les transformations. Les étapes de nettoyage incluent la suppression des doublons, l'isolation des commandes annulées dans une table séparée, la suppression des lignes sans identifiant client, la suppression des prix et quantités aberrants, et enfin la création d'une colonne revenue calculée.

c) Analyse :

L'analyse est structurée en trois niveaux de complexité croissante : des indicateurs globaux (chiffre d'affaires, panier moyen, nombre de clients), des analyses par dimension (top produits, CA par mois, CA par pays), et des requêtes avancées utilisant des CTEs et window functions pour analyser les cohortes clients et le taux de rétention.

5. Résultats clés :

- Indicateurs globaux :

Le dataset nettoyé contient 18 532 commandes pour un chiffre d'affaires total de 8 886 657 £, réalisé auprès de 4 338 clients uniques sur 3 665 produits différents. Le panier moyen par commande s'élève à 479 £, ce qui confirme le profil grossiste B2B du dataset.

- Produits :
  
Le produit le plus rentable est le "Paper Craft Little Birdie" avec 168 469 £ de CA et 80 995 unités vendues. Les frais de port apparaissent en 6ème position, ce qui reflète des commandes en grandes quantités typiques d'un modèle B2B.

- Tendance mensuelle :
  
Le CA suit une tendance croissante tout au long de l'année avec un pic marqué en novembre 2011 à 1 155 668 £, typique d'un grossiste qui prépare les stocks pour les fêtes de fin d'année. Décembre apparaît en baisse car le dataset ne couvre que les premiers jours du mois.

- Répartition géographique :
  
Le Royaume-Uni représente 81,97% du CA total avec 7 284 472 £. Les Pays-Bas arrivent en 2ème position avec 3,21%, suivis de l'Irlande et de l'Allemagne.

- Fidélisation clients :
  
Avec un taux de rétention de 65,58%, 2 845 clients sur 4 338 ont passé plusieurs commandes, ce qui témoigne d'une bonne fidélité clientèle typique d'un modèle B2B.

6.  Insights business :

L'analyse révèle plusieurs insights intéressants. Premièrement, la forte concentration du CA sur le Royaume-Uni (82%) suggère que l'entreprise pourrait avoir une opportunité de croissance significative à l'international, notamment aux Pays-Bas et en Allemagne qui montrent déjà un potentiel intéressant. Deuxièmement, le pic de novembre confirme une saisonnalité forte liée aux fêtes, ce qui implique une gestion des stocks anticipée dès septembre. Troisièmement, le taux de rétention de 65,58% est un signal positif pour un modèle B2B, mais les 1 493 clients one-shot représentent une opportunité de réengagement non négligeable. Enfin, la présence des frais de port dans le top 10 des revenus indique que la logistique représente un coût significatif pour les clients, ce qui pourrait être un levier de fidélisation si optimisé.


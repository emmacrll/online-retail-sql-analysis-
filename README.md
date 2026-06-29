# online-retail-sql-analysis-
# Analyse SQL d’un dataset e-commerce (PostgreSQL)

## Objectif du projet
Ce projet vise à analyser les données de ventes d’un e-commerce britannique afin d’en extraire des insights business exploitables.

L’objectif est de transformer des données brutes en indicateurs de performance clairs pour comprendre les ventes, les clients et la rentabilité.

---

## Stack technique
- PostgreSQL 16
- SQL (CTE, window functions, jointures)
- Docker (environnement reproductible)
- pgAdmin (gestion et visualisation de la base de données)

---

## Dataset
- Dataset public Kaggle (500 000+ transactions)
- E-commerce britannique (2010–2011)
- Données réelles avec anomalies : valeurs manquantes, annulations, doublons

---

## Démarche du projet

### 1. Exploration des données
Analyse de la structure du dataset afin d’identifier les problématiques de qualité des données :
- valeurs manquantes
- doublons
- commandes annulées
- valeurs aberrantes

---

### 2. Nettoyage des données
Préparation des données pour l’analyse :
- suppression des doublons
- gestion des commandes annulées
- suppression des lignes sans client
- traitement des valeurs aberrantes
- création d’une métrique de revenu

---

### 3. Analyse des données
Analyse structurée en plusieurs niveaux :
- indicateurs globaux (CA, panier moyen, clients)
- analyse par produit, pays et période
- analyses avancées avec CTE et window functions
- analyse de cohorte et rétention client

---

## 📈 Résultats clés

### Indicateurs globaux
- 8,8M £ de chiffre d’affaires
- 18 532 commandes
- 4 338 clients uniques
- 3 665 produits
- panier moyen : 479 £

---

### Produits
- produit le plus performant : *Paper Craft Little Birdie*
- forte concentration des revenus sur quelques produits clés
- importance des frais logistiques dans les ventes

---

### Tendances temporelles
- croissance globale du chiffre d’affaires sur l’année
- pic en novembre (effet saisonnier)
- baisse en décembre (période incomplète du dataset)

---

### Répartition géographique
- Royaume-Uni : ~82% du CA
- Pays-Bas : 2ème marché principal
- autres marchés : Irlande, Allemagne

---

### Fidélisation client
- taux de rétention : 65,58%
- majorité de clients récurrents (modèle B2B)
- présence d’un segment de clients one-shot à potentiel de réactivation

---

## Insights business
- forte dépendance au marché UK → opportunité d’internationalisation
- saisonnalité marquée → besoin d’anticipation des stocks
- bonne rétention client mais marge d’amélioration sur les clients occasionnels
- logistique (frais de port) joue un rôle important dans la structure des revenus

---

## Visualisation des données (Power BI)

Un tableau de bord interactif a été développé sous Power BI afin de visualiser les principaux indicateurs du projet.

Ce dashboard permet de :
- suivre l’évolution du chiffre d’affaires dans le temps
- analyser les performances par produit et par pays
- visualiser les KPI clés (CA, panier moyen, nombre de clients)
- explorer la répartition des ventes de manière interactive

Cet outil facilite l’interprétation des résultats et la prise de décision basée sur les données.


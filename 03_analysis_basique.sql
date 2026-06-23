--analyse basique des données 

-- Chiffre d'affaires total
SELECT ROUND(SUM(revenue)::NUMERIC, 2) AS ca_total
FROM online_retail_clean;

-- Nombre de commandes uniques
SELECT COUNT(DISTINCT invoiceno) AS nb_commandes
FROM online_retail_clean;

-- Nombre de clients uniques
SELECT COUNT(DISTINCT customerid) AS nb_clients
FROM online_retail_clean;

-- Nombre de produits uniques
SELECT COUNT(DISTINCT stockcode) AS nb_produits
FROM online_retail_clean;

-- Panier moyen par commande
SELECT ROUND(SUM(revenue)::NUMERIC / COUNT(DISTINCT invoiceno), 2) AS panier_moyen
FROM online_retail_clean;

-- Résumé global en une seule requête
SELECT
    ROUND(SUM(revenue)::NUMERIC, 2)                              AS ca_total,
    COUNT(DISTINCT invoiceno)                                     AS nb_commandes,
    COUNT(DISTINCT customerid)                                    AS nb_clients,
    COUNT(DISTINCT stockcode)                                     AS nb_produits,
    ROUND(SUM(revenue)::NUMERIC / COUNT(DISTINCT invoiceno), 2)  AS panier_moyen
FROM online_retail_clean;

-- Top 10 produits par revenue
SELECT
    stockcode,
    description,
    ROUND(SUM(revenue)::NUMERIC, 2) AS ca_produit,
    SUM(quantity)                    AS quantite_vendue
FROM online_retail_clean
GROUP BY stockcode, description
ORDER BY ca_produit DESC
LIMIT 10;



-- CA par mois
SELECT
    DATE_TRUNC('month', invoicedate) AS mois,
    ROUND(SUM(revenue)::NUMERIC, 2)  AS ca_mensuel,
    COUNT(DISTINCT invoiceno)         AS nb_commandes
FROM online_retail_clean
GROUP BY DATE_TRUNC('month', invoicedate)
ORDER BY mois;


-- CA par pays
SELECT
    country,
    ROUND(SUM(revenue)::NUMERIC, 2)  AS ca_pays,
    COUNT(DISTINCT customerid)        AS nb_clients,
    COUNT(DISTINCT invoiceno)         AS nb_commandes
FROM online_retail_clean
GROUP BY country
ORDER BY ca_pays DESC;

-- Meilleurs clients (top 10)
SELECT
    customerid,
    country,
    ROUND(SUM(revenue)::NUMERIC, 2)  AS ca_client,
    COUNT(DISTINCT invoiceno)         AS nb_commandes
FROM online_retail_clean
GROUP BY customerid, country
ORDER BY ca_client DESC
LIMIT 10;



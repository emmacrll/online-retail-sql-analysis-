--comprendre etat des données 

--nombre de client manquant 
SELECT COUNT(*)
FROM online_retail
WHERE customerid IS NULL;

--nombre de quantité négative 
SELECT COUNT(*)
FROM online_retail
WHERE quantity <= 0; 

--nombre de prix négatif ou nul 
SELECT COUNT(*)
FROM online_retail
WHERE unitprice <= 0;

--combien de commande sont annulées 
SELECT COUNT(*)
FROM online_retail
WHERE invoiceno LIKE 'C%';

-- verifier les factures vides 
SELECT COUNT(*)
FROM online_retail
WHERE invoiceno IS NULL;

--combien de factures différentes existent car 1 facture = plusieurs lignes
SELECT COUNT(DISTINCT invoiceno)
FROM online_retail;

--code manquant 
SELECT COUNT(*)
FROM online_retail
WHERE stockcode IS NULL; 

--code bizzare 
SELECT DISTINCT stockcode
FROM online_retail
ORDER BY stockcode
LIMIT 20;

--description manquante 
SELECT COUNT(*)
FROM online_retail
WHERE description IS NULL;

--description vide 
SELECT COUNT(*)
FROM online_retail
WHERE TRIM(description) = '';


--pour regarder les quantité acheté, retourné , et en moyenne du client combien il achete/Retourne
SELECT
    MIN(quantity),
    MAX(quantity),
    AVG(quantity)
FROM online_retail;



--pour regarder le prix le plus bas, le plus haut et le prix moyen :
SELECT
    MIN(unitprice),
    MAX(unitprice),
    AVG(unitprice)
FROM online_retail;


--combien de client unique on a 
SELECT COUNT(DISTINCT customerid)
FROM online_retail;


--vérification des pays 
SELECT DISTINCT country
FROM online_retail
ORDER BY country;

--vérifier les doublons c'est a dire que il y a la meme ligne plusieurs fois 
SELECT invoiceno, stockcode, quantity, invoicedate, customerid, unitprice, COUNT(*)
FROM online_retail
GROUP BY invoiceno, stockcode, quantity, invoicedate, customerid, unitprice
HAVING COUNT(*) > 1;

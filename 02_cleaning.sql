-- Créer une copie propre de la table brute
CREATE TABLE online_retail_clean AS
SELECT * FROM online_retail;

-- 1. Supprimer les doublons
DELETE FROM online_retail_clean
WHERE ctid NOT IN (
  SELECT MIN(ctid)
  FROM online_retail_clean
  GROUP BY invoiceno, stockcode, quantity, invoicedate, customerid, unitprice
);

-- 2. Garder les retours dans une table séparée puis les supprimer
CREATE TABLE returns AS
SELECT * FROM online_retail_clean
WHERE invoiceno LIKE 'C%';

DELETE FROM online_retail_clean
WHERE invoiceno LIKE 'C%';

-- 3. Supprimer les lignes sans customerid
DELETE FROM online_retail_clean
WHERE customerid IS NULL;

-- 4. Supprimer les prix aberrants
DELETE FROM online_retail_clean
WHERE unitprice <= 0;

-- 5. Supprimer les quantités négatives ou nulles
DELETE FROM online_retail_clean
WHERE quantity <= 0;

-- 6. Créer la colonne revenue
ALTER TABLE online_retail_clean ADD COLUMN revenue NUMERIC;
UPDATE online_retail_clean SET revenue = quantity * unitprice;


-- 7. Vérification finale
SELECT COUNT(*) FROM online_retail_clean;
SELECT MIN(quantity), MAX(quantity), AVG(quantity) FROM online_retail_clean;
SELECT MIN(unitprice), MAX(unitprice), AVG(unitprice) FROM online_retail_clean;
SELECT COUNT(*) FROM online_retail_clean WHERE customerid IS NULL;

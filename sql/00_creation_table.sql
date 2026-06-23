CREATE TABLE online_retail (
    InvoiceNo TEXT,
    StockCode TEXT,
    Description TEXT,
    Quantity INT,
    InvoiceDate TIMESTAMP,
    UnitPrice NUMERIC,
    CustomerID TEXT,
    Country TEXT
);

--test si la table est bien crée
SELECT * FROM online_retail LIMIT 10;

--test si les données sont bien importé 
SELECT COUNT(*) FROM online_retail;
SELECT * FROM online_retail LIMIT 10;

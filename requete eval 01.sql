SELECT CompanyName AS 'Sociéte',ContactName AS 'contact',ContactTitle AS 'Fonction',Phone AS 'téléphoine' FROM customers WHERE country= 'France';
SELECT ProductName AS 'produit', UnitPrice AS 'prix' FROM products NATURAL JOIN Suppliers WHERE CompanyName= 'Exotic Liquids ';
SELECT CompanyName AS 'fournisseurs', COUNT(ProductID) AS 'Nbre produit' FROM suppliers NATURAL JOIN products WHERE Country='France' GROUP BY CompanyName ORDER BY COUNT(ProductID) DESC;
SELECT CompanyName AS 'Client', COUNT(OrderID) AS 'Nbre commandes' from customers NATURAL JOIN orders NATURAL JOIN `order details` WHERE Country= 'france' GROUP BY CompanyName HAVING COUNT(OrderID)>10;
SELECT CompanyName AS 'Client', SUM(UnitPrice*Quantity) AS 'CA', Country AS 'Pays' FROM `order details` NATURAL JOIN orders NATURAL JOIN customers GROUP BY CompanyName HAVING SUM(UnitPrice*Quantity)>30.000 ORDER BY SUM(UnitPrice*Quantity) DESC;
SELECT customers.Country AS 'Pays' FROM customers  natural JOIN orders  NATURAL  JOIN `order details` NATURAL JOIN products JOIN suppliers  ON products.supplierID=suppliers.SupplierID AND suppliers.CompanyName='Exotic Liquids';
SELECT SUM(UnitPrice*Quantity) AS 'Montant Ventes 97' FROM `order details` NATURAL JOIN orders  WHERE year(OrderDate)=1997;
SELECT MONTH(OrderDate) AS 'mois 97' ,SUM(UnitPrice*Quantity) AS 'Montant Ventes 97' FROM `order details` NATURAL JOIN orders  WHERE year(OrderDate)=1997 GROUP BY  MONTH(OrderDate);
SELECT MAX(OrderDate) AS 'date derniere commande' FROM orders NATURAL JOIN customers  WHERE CompanyName='Du monde entier';
SELECT CONVERT(AVG(DATEDIFF(ShippedDate,OrderDate)),SIGNED INTEGER) AS 'délai moyen de livraison en jour' FROM orders;
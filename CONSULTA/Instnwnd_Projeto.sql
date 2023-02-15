USE Northwind


--========================================================================
-- 1) Quantos territórios estão registrados em cada região.

SELECT r.RegionDescription AS RegionName, COUNT(t.TerritoryID) AS TerritoryByRegion
FROM Territories t
JOIN Region r
ON r.RegionID = t.RegionID
GROUP BY r.RegionDescription


--========================================================================
-- 2) Selecione da tabela order_details todas as ordens que tiveram pelo menos
-- um item com mais de 50 unidades vendidas.

SELECT OrderID, COUNT(Quantity) AS ProductsWithFiftyOrMoreUnits
FROM [Order Details] 
WHERE Quantity >= 50
GROUP BY OrderID
ORDER BY OrderID


--========================================================================
-- 3) Qual o tempo médio de envio por cidade de destino?

SELECT ShipCity, AVG(DATEDIFF(day,OrderDate,ShippedDate)) AS 'AverageDuration'
FROM Orders
GROUP BY ShipCity


--========================================================================
-- 4) Para cada empregado,	exiba seu total de vendas em cada país.

SELECT e.FirstName, o.ShipCountry, COUNT(o.OrderId) AS TotalSalesByCountry
FROM Orders o
JOIN Employees e
ON e.EmployeeID = o.EmployeeID
GROUP BY e.FirstName, o.ShipCountry
ORDER BY e.FirstName, o.ShipCountry


--========================================================================
-- 5) Calcule o preço de cada pedido após os descontos serem aplicados.

SELECT * FROM ;


--========================================================================
-- 6) Crie um view chamada ProductDetails que mostre ProductId, CompanyName, 
-- CategoryName, description, QuantityPerUnit, UnitPrace, UnitsInStock, UnitsOnOrder,
-- ReorderLevel, Discontinued das tabelas Supplier, Products a Categories.

SELECT * FROM ;
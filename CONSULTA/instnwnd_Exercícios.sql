USE Northwind


-- Qual o custo total de cada tipo de frete?

SELECT ShipVia, SUM(Freight) AS FreightGeneral
FROM Orders
GROUP BY ShipVia
ORDER BY ShipVia


--Mostre quantos produtos cada fornecedor disponibiliza em cada categoria

SELECT SupplierID, CategoryID, COUNT(DISTINCT(ProductId)) AS QuantidadeProduto
FROM Products
WHERE Discontinued=0
GROUP BY SupplierID,CategoryID
ORDER BY SupplierID, CategoryID;


-- O gerente de vendas da Northwind pede uma série temporal (mensal) com volume
-- de pedidos e o valor de venda

SELECT 
FORMAT(o.OrderDate, 'yyyy-MM') AS Mes, 
COUNT(DISTINCT(o.OrderID)) AS NumeroPedidos,
ROUND(SUM(od.Quantity*od.UnitPrice*(1-od.Discount)),2)  AS ValorVenda
FROM Orders o
INNER JOIN [Order Details] od 
ON od.OrderID = o.OrderID 
GROUP BY FORMAT(o.OrderDate, 'yyyy-MM');

SELECT * FROM [Order Details]

-- FUNÇÃO

CREATE FUNCTION EmpregadoNome (@empregadoId INT)
RETURNS TABLE 
RETURN (
	SELECT  FirstName, LastName, HomePhone
	FROM Employees
	WHERE EmployeeID = @empregadoId
	);

SELECT * FROM EmpregadoNome(5)



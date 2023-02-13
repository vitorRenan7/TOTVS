-- Qual o custo total de cada tipo de frete
SELECT ShipVia, SUM(Freight) AS FreteTotal
FROM Orders 
GROUP BY ShipVia
ORDER BY ShipVia;


--Mostre quantos produtos cada fornecedor disponibiliza em cada categoria

SELECT SupplierID, CategoryID, COUNT(DISTINCT(ProductID)) AS QuantidadeProduto
FROM Products
WHERE Discontinued=0
GROUP BY SupplierID, CategoryID
ORDER BY SupplierID, CategoryID;


-- DISTINCT (Não conta repetido)

--Discontinued (Signfica se o produto foi discontinuado ou não)( =0 "false", =1"true")





-- O gerente de vendas da nor pede uma serie temporal (mensal) com volume de dados de pedidos e o valor de vendas

SELECT FORMAT(o.OrderDate, 'yyyy-MM') AS Mes,
COUNT(DISTINCT(o.OrderId)) AS NumeroPedido,
ROUND(SUM((od.Quantity*UnitPrice)), 2) AS ValorVenda
FROM Orders AS o
INNER JOIN [Order Details]  AS od 
ON od.OrderId = o.OrderID
GROUP BY FORMAT(o.OrderDate, 'yyyy-MM');
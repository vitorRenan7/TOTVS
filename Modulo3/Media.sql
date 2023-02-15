--Qual a fração do valor vendido por cada vendedor em relação ao valor total de vendas

WITH vendasPorVendedor AS (SELECT 
emp.FirstName AS vendedor,
SUM(ode.Quantity*UnitPrice*(1 - ode.Discount)) AS valorIndividual,
COUNT(DISTINCT(ord.OrderID)) AS quantidadesPedidos

FROM Employees AS emp
JOIN Orders AS ord ON ord.EmployeeID = emp.EmployeeID
JOIN [Order Details] AS ode ON ode.OrderID = ord.OrderID

GROUP BY emp.FirstName) SELECT 
vendedor,
ROUND(valorIndividual, 2),
ROUND(valorIndividual/(SELECT SUM(valorIndividual) FROM vendasPorVendedor), 4) * 100 AS proporcao,
ROUND(valorIndividual/quantidadesPedidos, 2) AS MediaVendedor
FROM vendasPorVendedor


-- Calcular a media de venda por cada vendedor é necessáirio pegar o valor de venda por vendedor e dividir pela q
-- quantidade de vendas


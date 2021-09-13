-- In which quarter in 1997 did we have the most revenue?

SELECT DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate), DAY(OrderDate)) as [Order Date]
FROM Orders
WHERE YEAR(OrderDate) = '1997'


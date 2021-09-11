-- What is the cost after discount for each order? Discounts should be applied as a percentage off.

SELECT d.OrderId, SUM(d.Quantity * d.UnitPrice) [Total Price], d.Discount [Discount %], 
	ROUND(SUM((d.Quantity * d.UnitPrice) * (1 - d.Discount)), 2) [Total After Discount]
FROM [Order Details] d
Group By d.OrderID, d.Discount
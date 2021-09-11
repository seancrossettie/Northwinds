-- What is the cost after discount for each order? Discounts should be applied as a percentage off.


SELECT 
	o.OrderID [Order ID],
	SUM(d.Quantity * d.UnitPrice) [Subtotal],
	o.Freight [Shipping Cost],
	SUM((d.Quantity * d.UnitPrice) + o.Freight) [Total After Shipping], 
	d.Discount [Discount %], 
	ROUND(SUM(((d.Quantity * d.UnitPrice) + o.Freight) * (1 - d.Discount)), 2) [Total After Discount]
FROM Orders o
JOIN [Order Details] d
ON o.OrderID = d.OrderID
GROUP BY o.OrderID, o.Freight, d.Discount
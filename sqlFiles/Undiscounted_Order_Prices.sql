-- What is the undiscounted subtotal for each Order (identified by OrderID)

select d.OrderID,
	SUM(d.UnitPrice * d.Quantity) as [Undiscounted Price]
From [Order Details] d
join Orders o on d.OrderID = o.OrderID
Group By d.OrderID, o.OrderID


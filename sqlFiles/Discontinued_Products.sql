-- What products are currently for sale (not discontinued)?

SELECT *
FROM Products
WHERE Discontinued != 1
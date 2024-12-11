SELECT p.Name AS product, c.Name AS category
FROM products AS p
INNER JOIN categories AS c
ON p.CategoryID = c.CategoryID
WHERE c.Name = "Computers";

SELECT p.Name, P.Price, r.Rating
FROM products AS p
INNER JOIN reviews AS r
ON p.ProductID = r.ProductID
WHERE r.Rating = 5;

SELECT products.ProductID, products.Name, sales.PricePerUnit, sales.Quantity, sales.PricePerUnit * sales.Quantity AS total
FROM products
LEFT JOIN sales 
ON sales.ProductId= products.ProductID
WHERE sales.Quantity IS NULL
ORDER BY products.Name;

SELECT p.Name AS product, c.Name AS category
FROM products AS P
INNER JOIN categories AS C
ON p.CategoryID = c.CategoryID
WHERE c.Name = "Computers";

SELECT p.Name, p.Price, r.Rating
FROM products AS p
INNER JOIN reviews AS r
ON p.ProductID = r.ProductID
WHERE r.Rating = 5;

SELECT CONCAT (e.FirstName, " ", e.LastName) AS Employee, SUM(s.Quantity) AS total
FROM employees AS e
INNER JOIN sales AS s
ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total Desc
Limit 5;

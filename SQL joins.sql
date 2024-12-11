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

SELECT d.Name AS Department, c.Name AS Category FROM categories AS c
INNER JOIN departments AS d
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = "Appliences" OR c.Name = "Games";

SELECT p.Name AS product
SUM(s.Quantity) AS TotalQuantity
SUM(s.PricePoint * s.Quantity) AS TotalValue
FROM products AS p
INNER JOIN sales AS s
ON p.ProductID = s.ProductID
WHERE p.Name = "Eagles: Hotal California";

SELECT p.Name AS product, r.Reviewer, r.Rating, r.Comment
FROM revies AS r
INNER JOIN products AS p
ON p.ProductID = r.ProductID
WHERE p.Name = "VisioTV"
ORDER BY r.Rating
LIMIT 1;


-- 3-1
SELECT P1.name AS name_1, P2.name AS name_2
FROM Products P1 INNER JOIN Products P2
ON P1.name >= P2.name;

-- 3-2
--CREATE TABLE Products3
--AS
SELECT name, price,
       ROW_NUMBER() OVER(PARTITION BY name, price
                             ORDER BY name) AS row_num
INTO Products3 
FROM Products2;

DELETE FROM Products3
WHERE row_num > 1;
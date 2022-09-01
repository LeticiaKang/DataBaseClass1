-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_groupby
-- CategoryID별로 SUM, COUNT, AVG Price 구하기

SELECT CategoryID, SUM(Price), COUNT(Price),  AVG(Price)
FROM Products
GROUP BY CategoryID;
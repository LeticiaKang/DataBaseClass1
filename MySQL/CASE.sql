--https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_case
-- 가격 30보다 적으면 저렴, 60보다 비싸면 비쌈, 그 사이는 적당 
-- CategoryID는 3과 6만
-- SupplierID기준으로 내림차순

SELECT *,
CASE
	WHEN Price < 30 THEN "저렴"
    WHEN Price > 60 THEN "비쌈"
    ELSE "적당"
END as "가격 평가"
FROM Products
WHERE CategoryID IN (3, 6)
ORDER BY SupplierID DESC;
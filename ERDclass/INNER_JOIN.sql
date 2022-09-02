-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_join_inner2

SELECT Orders.OrderID
        , Customers.CustomerName
        , Shippers.ShipperName
        , Products.ProductName
FROM ( 
        (
            (
                (
                    (Orders INNER JOIN Customers 
                            ON Orders.CustomerID = Customers.CustomerID) INNER JOIN Shippers 
                            ON Orders.ShipperID = Shippers.ShipperID) INNER JOIN OrderDetails 
                            ON OrderDetails.OrderID = Orders.OrderID) INNER JOIN Products 
                            ON Products.ProductID = OrderDetails.ProductID)
);

        
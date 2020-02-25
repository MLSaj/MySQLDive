SELECT 
    NAME  as 'Customers'
FROM
    Customers as c
LEFT JOIN Orders as o
ON 
    c.id = o.CustomerID
WHERE o.CustomerID is NULL
SELECT orders.requiredDate, orderdetails.productCode
FROM orderdetails
INNER JOIN orders ON orderdetails.orderNumber=orders.orderNumber
WHERE productCode = "S12_1099"
OR productCode = "S24_2000"
OR productCode = "S32_4289"
GROUP BY productCode 
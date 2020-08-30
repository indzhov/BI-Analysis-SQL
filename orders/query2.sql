SELECT products.productCode, SUM(quantityOrdered)
FROM products
INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
GROUP BY productCode
ORDER BY SUM(quantityOrdered) DESC LIMIT 10;
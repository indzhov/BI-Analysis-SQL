SELECT products.productCode, productDescription, orderdetails.priceEach - products.buyPrice, 
SUM(quantityInStock) - SUM(quantityOrdered)
FROM products
INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
GROUP BY productCode
ORDER BY SUM(quantityInStock) - SUM(quantityOrdered) ASC LIMIT 3;
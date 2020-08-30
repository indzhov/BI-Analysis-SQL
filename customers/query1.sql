SELECT SUM(payments.amount) AS total_money,
customers.city, customers.country, payments.customerNumber
FROM customers 
INNER JOIN payments ON customers.customerNumber=payments.customerNumber
GROUP BY payments.customerNumber, customers.city, customers.country
ORDER BY total_money DESC LIMIT 10; 


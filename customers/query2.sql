SELECT customers.city, customers.country, payments.customerNumber, payments.paymentDate,
customers.customerName, payments.amount
FROM customers 
INNER JOIN payments ON customers.customerNumber=payments.customerNumber
WHERE payments.customerNumber = 141 OR payments.customerNumber = 124




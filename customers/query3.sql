SELECT payments.customerNumber, employees.employeeNumber,
customers.customerName, payments.amount, employees.firstName, employees.lastName
FROM customers 
INNER JOIN payments ON customers.customerNumber=payments.customerNumber
INNER JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
GROUP BY customerNumber, amount, customerName




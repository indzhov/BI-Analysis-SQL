SELECT employees.jobTitle, offices.country, offices.city
FROM offices
INNER JOIN employees ON offices.officeCode=employees.officeCode

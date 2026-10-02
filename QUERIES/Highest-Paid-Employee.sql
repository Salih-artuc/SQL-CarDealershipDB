USE CarDealershipDB;
GO

SELECT TOP 1
    e.first_name,
    e.last_name,
    s.amount
FROM Employee e
INNER JOIN Salary s
    ON e.ssn = s.employee_ssn
ORDER BY s.amount DESC;
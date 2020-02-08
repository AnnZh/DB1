--1
USE AdventureWorks2012;
GO

SELECT
BusinessEntityID,
BirthDate,
MaritalStatus,
Gender,
HireDate
FROM HumanResources.Employee 
WHERE MaritalStatus = 'S' 
AND YEAR(BirthDate) <= 1960;
GO

--2
SELECT
BusinessEntityID,
JobTitle,
BirthDate,
Gender,
HireDate
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'
ORDER BY HireDate DESC;
GO

--3
SELECT
BusinessEntityID,
DepartmentID,
StartDate,
EndDate,
YEAR(ISNULL(EndDate, GETDATE())) - YEAR(StartDate) AS 'YearsWorked'
FROM HumanResources.EmployeeDepartmentHistory WHERE DepartmentID = 1;
GO

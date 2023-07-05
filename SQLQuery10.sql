/*
Today's Topic: Case Statement
*/


--Select FirstName, LastName, Age,
--CASE
--	When Age = 38 then 'Stanley'
--	When Age > 30 Then 'Old'
--		Else 'Baby'
--End
--From SQLTutorial.dbo.EmployeeDemographics
--Where Age is NOT NULL
--Order by Age

--Select FirstName, LastName, JobTitle, Salary,
--Case
--	When JobTitle =  'Salesman' Then Salary + (Salary * .10)
--	When JobTitle = 'Accountant' Then Salary + (Salary * .05)
--	When JobTitle = 'HR' Then Salary + (Salary *.000001)
--	Else Salary + (Salary * .03)
--End As SalaryAfterRaise
--From SQLTutorial.dbo.EmployeeDemographics
--Join SQLTutorial.dbo.EmployeeSalary
--	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/*
Today's Topic :Having Clause
*/

--Select JobTitle, Count(JobTitle)
--From SQLTutorial.dbo.EmployeeDemographics
--Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Where Count(JobTitle) >1
--Group By JobTitle
--##The Error with this Query is telling you that the count statement is incorrect and shouldnt be used.##


--Select JobTitle, Count(JobTitle)
--From SQLTutorial.dbo.EmployeeDemographics
--Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Having Count(JobTitle) > 1
--Group By JobTitle
--##This Error is completely dependent on the group by statement because we're performing this after it has been aggregated.##

--Select JobTitle, Count(JobTitle)
--From SQLTutorial.dbo.EmployeeDemographics
--Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Group By JobTitle
--Having Count(JobTitle) > 1
--##This is where the Having statement should be in a query##


--Select JobTitle, Avg(Salary)
--From SQLTutorial.dbo.EmployeeDemographics
--Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Group By JobTitle
--Having avg(Salary) > 45000
--Order by Avg(Salary)

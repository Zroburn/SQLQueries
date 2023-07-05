/*
Today's Topic: Subqueries (in the Select, From, and Where Statement)
*/


--Select *
--From EmployeeSalary

Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

--Select EmployeeID, Salary,(Select Avg(Salary)From EmployeeSalary)
--From EmployeeSalary

--Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
--From EmployeeSalary

--##These 2^v will produce the same results##

-- How to do it with Partition By

--Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
--From EmployeeSalary

-- Why Group By doesn't work
--Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
--From EmployeeSalary
--Group By EmployeeID, Salary
--order by 1,2


-- Subquery in From

--Select *
--From (Select EmployeeID, Salary, Avg(Salary) over () as AllAvgSalary
--	  From EmployeeSalary)



--Select a.EmployeeID, AllAvgSalary
--From 
--	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
--	 From EmployeeSalary) a
--Order by a.EmployeeID


-- Subquery in Where

--Select EmployeeID, JobTitle, Salary
--From EmployeeSalary

--Select EmployeeID, JobTitle, Salary
--From EmployeeSalary
--where EmployeeID in (
--	Select *
--	From EmployeeDemographics)
	

--Select EmployeeID, JobTitle, Salary
--From EmployeeSalary
--where EmployeeID in (
--	Select EmployeeID 
--	From EmployeeDemographics
--	where Age > 30)
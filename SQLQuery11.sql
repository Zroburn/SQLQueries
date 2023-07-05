/*
Today's Topic: Partition by
*/

--Select*
--From SQLTutorial..EmployeeDemographics

--Select*
--From SQLTutorial..EmployeeSalary

--With CTE_Employee as (
---Select FirstName, LastName, Gender, Salary
--,Count(Gender) Over (Partition by Gender) as TotalGender
--, Avg(Salary) Over (Partition by Gender) as AvgSalary
--From SQLTutorial..EmployeeDemographics emp
--Join SQLTutorial..EmployeeSalary sal
--	On emp.EmployeeID = sal.EmployeeID
--Where Salary > '45000'

--Select FirstName, LastName, Gender, Salary
--,Count(Gender) Over (Partition by Gender) as TotalGender
--From SQLTutorial..EmployeeDemographics dem
--Join SQLTutorial..EmployeeSalary sal
--	On dem.EmployeeID = sal.EmployeeID

--Select FirstName, LastName, Gender, Salary,Count(Gender)
--From SQLTutorial..EmployeeDemographics dem
--Join SQLTutorial..EmployeeSalary sal
--	On dem.EmployeeID = sal.EmployeeID
--Group by FirstName, LastName, Gender, Salary

--Select Gender, Count(Gender)
--From SQLTutorial..EmployeeDemographics dem
--Join SQLTutorial..EmployeeSalary sal
--	On dem.EmployeeID = sal.EmployeeID
--Group by Gender


/*
Today's Topic: CTEs
*/

--With CTE_Employee as 
--(Select FirstName, LastName, Gender, Salary
--, Count(Gender) Over (Partition by Gender) as TotalGender
--, Avg(Salary) Over (Partition by Gender) as AvgSalary
--From SQLTutorial..EmployeeDemographics emp
--Join SQLTutorial..EmployeeSalary sal
--	On emp.EmployeeID = sal.EmployeeID
--Where Salary > '45000'
--)
--Select *
--From CTE_Employee


/*
Today's Topic:
*/

Create Table #temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select *
from #temp_Employee

Insert Into #temp_Employee Values(
'1001', 'HR', '45000'
)

Insert Into #temp_Employee
Select *
from SQLTutorial..EmployeeSalary


--Create Table #Temp_Employee2 (
--JobTitle varchar(50),
--EmployeePerJob int,
--AvgAge int,
--AvgSalary int)

--Insert into #Temp_Employee2
--Select JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
--From SQLTutorial..EmployeeDemographics emp
--Join SQLTutorial..EmployeeSalary sal
--	On emp.EmployeeID = sal.EmployeeID
--Group by Jobtitle

--Select*
--From #Temp_Employee2


--Drop Table If Exists #Temp_Employee2
--Create Table #Temp_Employee2 (
--JobTitle varchar(50),
--EmployeePerJob int,
--AvgAge int,
--AvgSalary int)

--Insert into #Temp_Employee2
--Select JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
--From SQLTutorial..EmployeeDemographics emp
--Join SQLTutorial..EmployeeSalary sal
--	On emp.EmployeeID = sal.EmployeeID
--Group by Jobtitle

--Select*
--From #Temp_Employee2
--##The top line (Starting with Drop) will erase the previous table and replace it with the updated table##
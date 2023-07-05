--create table EmployeeDemographics
--(EmployeeID int, FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50))

--create table EmployeeSalary
--(EmployeeID int, JobTitle varchar(50), Salary int)

--Select *
--From EmployeeDemographics
--Where FirstName <> 'Jim' First name does not equal Jim

--Select *
--From EmployeeDemographics
--Where LastName Like 'S%' Where the last name starts with 'S'. % is a wildcard?

--Select *
--From EmployeeDemographics
--Where LastName Like '%S%' Used to find Last names with an 'S' in it.

--Select *
--From EmployeeDemographics
--Where LastName Like 'S%o%'To help locate Names or words with 'S' or 'O' in them

--Select *
--From EmployeeDemographics
--Where LastName Like 'S%ott%' Must be spelled correctly!!!

/*
Where Statement
=, <>, <, >, And, Or, Like, Null, not null, In 
*/
--Select *
--From EmployeeDemographics
--Where FirstName IN ('Jim','Micheal')

/*
Group by, order by
*/
--Select Gender
--From EmployeeDemographics
--Group by Gender
--##This query will show only the genders##

--Select Gender, Count(Gender)
--From EmployeeDemographics
--Group by Gender
--##This query will show you the genders but also the number(COUNT) of each
--Gender in thos rows##

--Select *
--from EmployeeDemographics

--Select Gender, Age, Count(Gender)
--From EmployeeDemographics
--Group by Gender, Age
--##The COUNT(Gender) colomn is artifcial only to for you to use. It is not part of the table.##

--Select *
--from EmployeeDemographics

--Select Gender, Count(Gender) As CountGender
--From EmployeeDemographics
--Where Age > 31
--Group by Gender
--Order by CountGender Desc
--##The DESC command will sort and order values from the highest to the lowest.##
--## Order by will always order the selcetion brom least to greatest##

--Select *
--from EmployeeDemographics
--Order by Age, Gender Desc
--##This will order the data be least to greatest. Age first then by female.The 'F' comes before the 'M'##
--## The column name can be replaced with its respective number. EmployeeID = 1 and Gender = 5##

--Select Gender, Count(Gender) As CountGender
--From EmployeeDemographics
--Where Age > 31
--Group by Gender
--Order by CountGender Desc

--##INTERMEDIATE-ADVANCE##
/*
Inner Joins, Full/Left/Right/Outer Joins
*/

--Select * 
--From SQLTutorial.dbo.EmployeeDemographics

--Select *
--From SQLTutorial.dbo.EmployeeSalary

--Select *
--From SQLTutorial.dbo.EmployeeDemographics
--Right Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--##In join statements. The left table will be the first one that is referenced.##

--Select EmployeeDemographics.EmployeeID, FirstName,LastName,Salary
--From SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Where FirstName <> 'Micheal'
--Order by Salary Desc
--##Scenerio: Micheal wants to save money by reducing the pay of the highest earner##

--Select JobTitle, AVG(Salary)
--From SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Where JobTitle='Salesman'
--Group by JobTitle
--##Scenerio: The Accountant(Angela) wants to know what the average salary of the Salesman is##

/*
Today's Topic: Union, Union All
*/

--Select EmployeeID, FirstName, Age
--From SQLTutorial.dbo.EmployeeDemographics
--union
--Select EmployeeID, JobTitle, Salary
--From SQLTutorial.dbo.EmployeeSalary
--Order by EmployeeID
--##Dont Do this. This will only combine(creat a union) between like data##

--Select*
--From SQLTutorial.dbo.EmployeeDemographics
--Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
--	On EmployeeDemographics.EmployeeID=
--	   WareHouseEmployeeDemographics.EmployeeID

/*
Today's Topic: Updating/Deleting Data
*/

--Select *
--From SQLTutorial.dbo.EmployeeDemographics

--Update SQLTutorial.dbo.EmployeeDemographics
--set EmployeeID=1012
--Where FirstName='Holly' and LastName='Flax'

--Update SQLTutorial.dbo.EmployeeDemographics
--set Age = 31, Gender = 'Female'
--Where FirstName='Holly' and LastName='Flax'

--Update SQLTutorial.dbo.EmployeeDemographics
--set Age = 31, Gender = 'Female'
--Where EmployeeID = 1012

--Delete From SQLTutorial.dbo.EmployeeDemographics
--Where EmployeeID = 1005
--##Make sure to run a Select Query on the information you want to delete. This way you know what you are going to delete.
--	There may be no way to retrieve that data.##

--Select *
--From SQLTutorial.dbo.EmployeeDemographics
--Where EmployeeID = 1004

/*
Today's Topic: Aliasing
*/

--Select FirstName as Fname
--From [SQLTutorial].[dbo].[EmployeeDemographics]
--## The AS statement is optional in this scenerio##

--Select avg(Age) As AvgAge
--From [SQLTutorial].[dbo].[EmployeeDemographics]

--Select Demo.EmployeeID
--From [SQLTutorial].[dbo].[EmployeeDemographics] as Demo
--join [SQLTutorial].[dbo].[EmployeeSalary] as Sal
--	ON Demo.EmployeeID = Sal.EmployeeID

--Select a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
--From [SQLTutorial].[dbo].EmployeeDemographics a
--left join [SQLTutorial].[dbo].EmployeeSalary b
--	on a.EmployeeID = b.EmployeeID
--Left Join From [SQLTutorial].[dbo].WareHouseEmployeeDemographics c
--	on a. EmployeeID = c.EmployeeID
--##THis is what you do not want to do. You do not want your aliasing to just write an a, b, or c.
--This is very frowned upon when writing queries because it really doesn't give any context
--to what the table that you're referencing and its confusing as this quey continues to grow##

--Select Demo.EmployeeID, Demo.FirstName, Demo.FirstName, Sal.JobTitle, Ware.Age
--From [SQLTutorial].[dbo].EmployeeDemographics Demo
--left join [SQLTutorial].[dbo].EmployeeSalary Sal
--	on Demo.EmployeeID = Sal.EmployeeID
--Left Join From [SQLTutorial].[dbo].WareHouseEmployeeDemographics Ware
--	on Demo. EmployeeID = Ware.EmployeeID
--## Do this instead.##
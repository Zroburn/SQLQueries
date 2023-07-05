/*
Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replacek, Substring, Upper, Lower
*/

--Drop Table EmploeeErrors;


--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--Insert into EmployeeErrors Values 
--('1001  ', 'Jimbo', 'Halbert')
--,('  1002', 'Pamela', 'Beasely')
--,('1005', 'TOby', 'Flenderson - Fired')

--Select *
--From EmployeeErrors

---- Using Trim, LTRIM, RTRIM

--Select EmployeeID, TRIM(employeeID) AS IDTRIM
--FROM EmployeeErrors 

--Select EmployeeID, RTRIM(employeeID) as IDRTRIM
--FROM EmployeeErrors 

--Select EmployeeID, LTRIM(employeeID) as IDLTRIM
--FROM EmployeeErrors 

	



-- Using Replace

--Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
--FROM EmployeeErrors
--##Replace(Column name, what you want to replace, followed by what you want to replace it. As new column name##


-- Using Substring
--Select err.FirstName, Substring(err.FirstName,1,3), dem.FirstName, Substring(dem.FirstName,1,3)
--From EmployeeErrors err
--join SQLTutorial.dbo.EmployeeDemographics dem
--	On Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
--##This is referred to as 'fuzzy matching'. Should be done with more identifiers[gender, age, last name, DOB, ect.]##

--Select Substring(FirstName, 
--From EmployeeErrors

--Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
--FROM EmployeeErrors err
--JOIN EmployeeDemographics dem
--	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
--	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)
--##Substring(table column name, where it will start to pull[1 indicates the first letter or digit], then how many the substring will pull##


-- Using UPPER and lower

--Select firstname, LOWER(firstname)
--from EmployeeErrors
--##This makes everthing lower case##


--Select Firstname, UPPER(FirstName)
--from EmployeeErrors
--##This makes everything upper case##
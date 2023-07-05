SELECT *
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
'Excel 12.0 Xml; HDR=NO;
Database=‪C:\Users\Daved\Downloads\CovidDeaths.xlsx',
[CovidDeaths$]);

MSSQL$SQLEXPRESS
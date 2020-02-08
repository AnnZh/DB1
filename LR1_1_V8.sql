CREATE DATABASE Anna_Zhurok;
GO
USE Anna_Zhurok;
GO
CREATE SCHEMA sales;
GO
CREATE SCHEMA persons;
GO
CREATE TABLE sales.Orders (
	OrderNum INT NULL);
GO
BACKUP DATABASE Anna_Zhurok
TO DISK = 'C:\BSUIR4\Anna_Zhurok.bak' 
GO
USE master;
GO
DROP DATABASE Anna_Zhurok;
GO
RESTORE DATABASE Anna_Zhurok
    FROM DISK = 'C:\BSUIR4\Anna_Zhurok.bak'
GO


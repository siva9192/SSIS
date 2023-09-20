IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'007 Dynamically Execute Packages') AND type = (N'U'))
drop table [007 Dynamically Execute Packages]
go
CREATE TABLE [007 Dynamically Execute Packages](ID INT IDENTITY, PackageFolderPath varchar(300), PackageName varchar(100), Active bit)
go
--Insert package details
INSERT INTO [007 Dynamically Execute Packages] VALUES('C:\MSBI\SSIS\Training\DynamicallyExecutePackagesinSSIS\DynamicallyExecutePackagesinSSIS',
'ChildPkg1.dtsx',1)
INSERT INTO [007 Dynamically Execute Packages] VALUES('C:\MSBI\SSIS\Training\DynamicallyExecutePackagesinSSIS\DynamicallyExecutePackagesinSSIS',
'ChildPkg2.dtsx',1)
INSERT INTO [007 Dynamically Execute Packages] VALUES('C:\MSBI\SSIS\Training\DynamicallyExecutePackagesinSSIS\DynamicallyExecutePackagesinSSIS',
'ChildPkg3.dtsx',1)
go
select PackageFolderPath, PackageName from [007 Dynamically Execute Packages] where Active=1

CREATE TABLE [007 Logs](ID INT IDENTITY, Step varchar(300), PackageName varchar(100), Dated DateTime)

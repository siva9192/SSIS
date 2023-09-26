--Create log table
create table [008 audit_log](Id int identity, PackageName varchar(200), TableName varchar(200), RecordsInserted int,
RecordsUpdated int, Dated datetime)

--Create config table
CREATE TABLE [008 Config_Table] (Id int identity,TableName VARCHAR(200),lastUpdatedColumn varchar(200), lastUpdatedvalue datetime)
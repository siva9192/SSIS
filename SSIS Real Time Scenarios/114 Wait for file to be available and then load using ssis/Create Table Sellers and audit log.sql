CREATE TABLE [dbo].[Sellers](
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[country] [varchar](50) NULL
) ON [PRIMARY]
GO
create table audit_log(Id int identity, PackageName varchar(50), [Status] varchar(100), FilePath varchar(1000), RecordsInserted int,
Dated datetime)
IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'006 Archive files after processing') AND type = (N'U'))   
drop table [006 Archive files after processing]
CREATE TABLE [dbo].[006 Archive files after processing](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
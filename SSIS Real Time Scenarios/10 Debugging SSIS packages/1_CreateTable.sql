IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'010 Debugging ssis packages') AND type = (N'U'))   
drop table [010 Debugging ssis packages]
CREATE TABLE [dbo].[010 Debugging ssis packages](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
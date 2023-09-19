IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[audit_log]') AND type in (N'U'))
CREATE TABLE [dbo].[audit_log](
	[Id] [int] IDENTITY(1,1) primary key NOT NULL,
	[PackageName] [varchar](50) NULL,
	[Status] [varchar](100) NULL,
	[FileName] [varchar](1000) NULL,
	[RecordsInserted] [int] NULL,
	[RecordsRejected] [int] NULL,
	[Dated] [datetime] NULL,
	DestinationTable varchar(100),
	ErrorMessage varchar(max)
) ON [PRIMARY]

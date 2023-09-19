USE [Test]
GO

/****** Object:  Table [dbo].[audit_log]    Script Date: 1/21/2023 1:30:32 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[audit_log]') AND type in (N'U'))
DROP TABLE [dbo].[audit_log]
GO

/****** Object:  Table [dbo].[audit_log]    Script Date: 1/21/2023 1:30:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[audit_log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](50) NULL,
	[Status] [varchar](100) NULL,
	[Part] [varchar](100) NULL,
	[RecordsInserted] [int] NULL,
	[Dated] [datetime] NULL
) ON [PRIMARY]
GO



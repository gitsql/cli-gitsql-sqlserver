SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Production].[Culture](
	[CultureID] [nchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Culture_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Sales].[Currency](
	[CurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Currency_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

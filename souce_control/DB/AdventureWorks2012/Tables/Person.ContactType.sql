SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Person].[ContactType](
	[ContactTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ContactType_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

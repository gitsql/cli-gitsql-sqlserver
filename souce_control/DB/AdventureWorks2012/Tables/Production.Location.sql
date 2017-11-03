SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Production].[Location](
	[LocationID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[CostRate] [smallmoney] NOT NULL CONSTRAINT [DF_Location_CostRate]  DEFAULT ((0.00)),
	[Availability] [decimal](8, 2) NOT NULL CONSTRAINT [DF_Location_Availability]  DEFAULT ((0.00)),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Location_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

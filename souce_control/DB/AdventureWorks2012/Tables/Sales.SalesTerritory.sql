SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Sales].[SalesTerritory](
	[TerritoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[CountryRegionCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Group] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesYTD] [money] NOT NULL CONSTRAINT [DF_SalesTerritory_SalesYTD]  DEFAULT ((0.00)),
	[SalesLastYear] [money] NOT NULL CONSTRAINT [DF_SalesTerritory_SalesLastYear]  DEFAULT ((0.00)),
	[CostYTD] [money] NOT NULL CONSTRAINT [DF_SalesTerritory_CostYTD]  DEFAULT ((0.00)),
	[CostLastYear] [money] NOT NULL CONSTRAINT [DF_SalesTerritory_CostLastYear]  DEFAULT ((0.00)),
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_SalesTerritory_rowguid]  DEFAULT (newid()),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SalesTerritory_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

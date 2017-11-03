SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Sales].[SalesPerson](
	[BusinessEntityID] [int] NOT NULL,
	[TerritoryID] [int] NULL,
	[SalesQuota] [money] NULL,
	[Bonus] [money] NOT NULL CONSTRAINT [DF_SalesPerson_Bonus]  DEFAULT ((0.00)),
	[CommissionPct] [smallmoney] NOT NULL CONSTRAINT [DF_SalesPerson_CommissionPct]  DEFAULT ((0.00)),
	[SalesYTD] [money] NOT NULL CONSTRAINT [DF_SalesPerson_SalesYTD]  DEFAULT ((0.00)),
	[SalesLastYear] [money] NOT NULL CONSTRAINT [DF_SalesPerson_SalesLastYear]  DEFAULT ((0.00)),
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_SalesPerson_rowguid]  DEFAULT (newid()),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SalesPerson_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

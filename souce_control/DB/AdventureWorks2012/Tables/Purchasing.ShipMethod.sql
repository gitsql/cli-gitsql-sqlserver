SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Purchasing].[ShipMethod](
	[ShipMethodID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ShipBase] [money] NOT NULL CONSTRAINT [DF_ShipMethod_ShipBase]  DEFAULT ((0.00)),
	[ShipRate] [money] NOT NULL CONSTRAINT [DF_ShipMethod_ShipRate]  DEFAULT ((0.00)),
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_ShipMethod_rowguid]  DEFAULT (newid()),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ShipMethod_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

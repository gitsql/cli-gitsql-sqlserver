SET ANSI_NULLS ON
GO

GO
CREATE TABLE [Sales].[CurrencyRate](
	[CurrencyRateID] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyRateDate] [datetime] NOT NULL,
	[FromCurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ToCurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AverageRate] [money] NOT NULL,
	[EndOfDayRate] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CurrencyRate_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

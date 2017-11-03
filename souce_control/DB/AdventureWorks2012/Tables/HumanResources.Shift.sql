SET ANSI_NULLS ON
GO

GO
CREATE TABLE [HumanResources].[Shift](
	[ShiftID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Shift_ModifiedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

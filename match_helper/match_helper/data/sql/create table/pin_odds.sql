USE [HtmlSelect]
GO

/****** Object:  Table [dbo].[pin_odds]    Script Date: 2015/1/19 21:07:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pin_odds](
	[int] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [int] NULL,
	[event_id] [int] NULL,
	[period_type] [nvarchar](500) NULL,
	[bet_type] [nvarchar](500) NULL,
	[r1] [nvarchar](500) NULL,
	[r2] [nvarchar](500) NULL,
	[r3] [nvarchar](500) NULL,
	[r4] [nvarchar](500) NULL,
	[r5] [nvarchar](500) NULL,
	[r6] [nvarchar](500) NULL,
	[o1] [nvarchar](500) NULL,
	[o2] [nvarchar](500) NULL,
	[o3] [nvarchar](500) NULL,
	[o4] [nvarchar](500) NULL,
	[o5] [nvarchar](500) NULL,
	[o6] [nvarchar](500) NULL,
 CONSTRAINT [PK_pin_odds] PRIMARY KEY CLUSTERED 
(
	[int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_r1]  DEFAULT ('') FOR [r1]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_r2]  DEFAULT ('') FOR [r2]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_r3]  DEFAULT ('') FOR [r3]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_r4]  DEFAULT ('') FOR [r4]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_r5]  DEFAULT ('') FOR [r5]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_r6]  DEFAULT ('') FOR [r6]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_o1]  DEFAULT ('') FOR [o1]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_o2]  DEFAULT ('') FOR [o2]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_o3]  DEFAULT ('') FOR [o3]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_o4]  DEFAULT ('') FOR [o4]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_o5]  DEFAULT ('') FOR [o5]
GO

ALTER TABLE [dbo].[pin_odds] ADD  CONSTRAINT [DF_pin_odds_o6]  DEFAULT ('') FOR [o6]
GO


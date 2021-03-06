USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[s_pin_events]    脚本日期: 01/21/2015 13:59:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_pin_events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sport_id] [int] NULL,
	[league_id] [int] NULL,
	[event_id] [int] NULL,
	[start_time] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[home] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[away] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_pin_events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[s_mbook_events]    脚本日期: 01/21/2015 13:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_mbook_events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[event_id] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[sport] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[country] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[competition] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[start_time] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[home] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[away] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_mbook_events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

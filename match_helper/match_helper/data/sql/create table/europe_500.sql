USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[europe_500]    脚本日期: 11/07/2014 13:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[europe_500](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_time] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[league] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[host] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[client] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[website] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[timespan] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[odd_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[odd_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[odd_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_return] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[kelly_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[kelly_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[kelly_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_odd_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_odd_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_odd_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_return] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_kelly_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_kelly_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_kelly_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_europe_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

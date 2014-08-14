USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[europe_100]    脚本日期: 08/14/2014 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[europe_100](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[company] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_time] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[host] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[client] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[persent_return] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[kelly_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[kelly_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[kelly_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_profit_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_profit_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_profit_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_persent_return] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_kelly_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_kelly_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_kelly_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_europe_new_100] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

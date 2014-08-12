USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[europe_100_log]    脚本日期: 08/12/2014 10:06:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[europe_100_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[company] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[start_time] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[time_zone] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[host] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[client] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_europe_100_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

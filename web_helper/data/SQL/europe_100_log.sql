USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[europe_100_log]    脚本日期: 08/25/2014 15:17:32 ******/
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
	[host] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[client] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_win] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_draw] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[profit_lose] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[time_zone] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[time_add] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[f_type] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[f_start_time] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[f_host] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[f_client] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[f_state] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[target_id] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_europe_100_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

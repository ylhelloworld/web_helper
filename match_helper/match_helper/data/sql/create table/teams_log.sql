USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[teams_log]    脚本日期: 11/07/2014 13:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teams_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[website] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[season_name] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[lg_name1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[lg_name2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[lg_name3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[lg_name_all] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[name1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[name2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[name3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[name_all] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_team_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

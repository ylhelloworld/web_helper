USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[a_event]    脚本日期: 06/08/2015 15:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [int] NULL,
	[start_time] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team5] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team6] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note1] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note2] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note3] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note4] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note5] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note6] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[a_all_id] [int] NULL,
 CONSTRAINT [PK_a_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

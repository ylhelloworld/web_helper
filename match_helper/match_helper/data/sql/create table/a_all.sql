USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[a_all]    脚本日期: 06/09/2015 15:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_all](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [int] NULL,
	[event_id] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[start_time] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team5] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[team6] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note5] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[note6] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[type_name] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[odd_id] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[m1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[m2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[m3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[m4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[m5] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[m6] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[r1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[r2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[r3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[r4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[r5] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[r6] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[o1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[o2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[o3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[o4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[o5] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[o6] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[a_website_id] [int] NULL,
	[a_event_id] [int] NULL,
	[a_type_id] [int] NULL,
	[a_odd_id] [int] NULL,
 CONSTRAINT [PK_a_all] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

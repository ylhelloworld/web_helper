USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[s_mbook_market]    脚本日期: 01/21/2015 13:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_mbook_market](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timespan] [int] NULL,
	[event_id] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[market] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[runner] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[depth_no] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[odd] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[amount] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_mbook_market] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

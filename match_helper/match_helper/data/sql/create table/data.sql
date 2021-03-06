USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[data]    脚本日期: 11/07/2014 13:44:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[doc_id] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[description] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[tag0] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[tag1] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[tag2] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[tag3] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[tag4] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

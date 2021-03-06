USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[a_type]    脚本日期: 06/08/2015 15:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[name_all] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note1] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note2] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note3] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note4] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note5] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[note6] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_a_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

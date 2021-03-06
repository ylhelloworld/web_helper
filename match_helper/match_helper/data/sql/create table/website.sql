USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[website]    脚本日期: 11/07/2014 13:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[website](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[url] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[other_names] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[other_urls] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[pay_ways] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[info] [text] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

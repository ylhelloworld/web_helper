USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[website_url]    脚本日期: 11/07/2014 13:47:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[website_url](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_name] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[step] [int] NULL,
	[method] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[select_type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[url] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[seconds] [int] NULL,
	[is_use] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_company_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

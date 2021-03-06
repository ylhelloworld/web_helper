USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[url_fixed]    脚本日期: 11/07/2014 13:47:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[url_fixed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[template_id] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[url] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[url_value] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_url_fixed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

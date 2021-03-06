USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[doc]    脚本日期: 11/07/2014 13:44:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doc_id] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tags] [nvarchar](4000) COLLATE Chinese_PRC_CI_AS NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_doc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

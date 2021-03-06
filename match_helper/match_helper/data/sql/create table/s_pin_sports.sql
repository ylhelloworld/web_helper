USE [HtmlSelect]
GO
/****** 对象:  Table [dbo].[s_pin_sports]    脚本日期: 01/21/2015 14:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_pin_sports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sport_id] [int] NULL,
	[sport_name] [text] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_pin_sports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

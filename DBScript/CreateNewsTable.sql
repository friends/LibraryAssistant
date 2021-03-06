--   CreateNewsTable.sql  version 1.0
--   =================================
--   Copyright (C) 2010  Xie Xiaojing
--   作者： 谢晓境
--   Email: xxj050@163.com
--   最后修改时间： 2010 - 12 - 11
--   检查者: 陈兵
--   最后检查时间: 2010 - 12 -11
--   =================================

USE [LASDB]
GO
/****** Object:  Table [dbo].[News]    Script Date: 12/10/2010 02:15:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[newsId] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NULL,
	[title] [varchar](100) NOT NULL,
	[publishTime] [datetime2] NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[newsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

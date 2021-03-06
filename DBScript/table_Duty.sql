USE [LASDB]
GO
/****** Object:  Table [dbo].[Duty]    Script Date: 12/11/2010 15:05:53 ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Duty](
	[assistantID] [varchar](16) NOT NULL,
	[day] [int] NOT NULL,
	[time] [int] NOT NULL,
 CONSTRAINT [PK_Duty] PRIMARY KEY CLUSTERED 
(
	[assistantID] ASC,
	[day] ASC,
	[time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Duty_Assistants]    Script Date: 12/11/2010 15:05:53 ******/
ALTER TABLE [dbo].[Duty]  WITH CHECK ADD  CONSTRAINT [FK_Duty_Assistants] FOREIGN KEY([assistantID])
REFERENCES [dbo].[Assistants] ([ID])
GO
ALTER TABLE [dbo].[Duty] CHECK CONSTRAINT [FK_Duty_Assistants]
GO

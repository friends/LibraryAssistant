USE [LASDB]
GO
/****** Object:  Table [dbo].[Assistants]    Script Date: 12/12/2010 14:25:53 ******/
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'admin', N'123456', N'管理员')
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'Altair', N'123', N'李星懿')
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'cb', N'123', N'陈兵')
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'lt', N'123', N'李涛')
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'sp', N'123', N'苏平')
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'xxj', N'123', N'谢晓静')
INSERT [dbo].[Assistants] ([ID], [password], [name]) VALUES (N'yhc', N'123', N'杨海川')
/****** Object:  Table [dbo].[Duty]    Script Date: 12/12/2010 14:25:53 ******/
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'Altair', 1, 1)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'Altair', 4, 0)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'Altair', 4, 4)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'Altair', 4, 5)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'Altair', 6, 5)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'cb', 2, 1)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'cb', 7, 0)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'cb', 7, 1)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'cb', 7, 2)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'lt', 1, 6)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'lt', 2, 5)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'lt', 4, 4)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'lt', 4, 7)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'lt', 5, 5)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'sp', 1, 5)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'sp', 3, 2)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'sp', 4, 4)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'sp', 6, 7)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'xxj', 4, 3)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'xxj', 7, 5)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'yhc', 4, 1)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'yhc', 4, 3)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'yhc', 5, 0)
INSERT [dbo].[Duty] ([assistantID], [day], [time]) VALUES (N'yhc', 5, 6)

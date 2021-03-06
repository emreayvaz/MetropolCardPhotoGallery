CREATE DATABASE [MetropolDeneme]
GO

USE [MetropolDeneme]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1.07.2022 16:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 1.07.2022 16:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Description] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
	[ViewNumber] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (1, N'The Sea', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (2, N'Design', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (3, N'Foggy Forests', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Status]) VALUES (4, N'Summer', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (1, N'https://images.pexels.com/photos/11377550/pexels-photo-11377550.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 25, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (2, N'https://images.pexels.com/photos/8650280/pexels-photo-8650280.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 29, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (3, N'https://images.pexels.com/photos/2280606/pexels-photo-2280606.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 16, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (4, N'https://images.pexels.com/photos/2959611/pexels-photo-2959611.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 11, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (5, N'https://images.pexels.com/photos/2499795/pexels-photo-2499795.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (6, N'https://images.pexels.com/photos/5641902/pexels-photo-5641902.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (7, N'https://images.pexels.com/photos/6044265/pexels-photo-6044265.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 2, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (8, N'https://images.pexels.com/photos/7015034/pexels-photo-7015034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (9, N'https://images.pexels.com/photos/4614204/pexels-photo-4614204.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (10, N'https://images.pexels.com/photos/5696210/pexels-photo-5696210.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (11, N'https://images.pexels.com/photos/1367192/pexels-photo-1367192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 3, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (12, N'https://images.pexels.com/photos/1287075/pexels-photo-1287075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (13, N'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (14, N'https://images.pexels.com/photos/9754/mountains-clouds-forest-fog.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (15, N'https://images.pexels.com/photos/1287083/pexels-photo-1287083.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (16, N'https://images.pexels.com/photos/1152359/pexels-photo-1152359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 2, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (17, N'https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 7, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (18, N'https://images.pexels.com/photos/1142941/pexels-photo-1142941.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 2, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (19, N'https://images.pexels.com/photos/1209611/pexels-photo-1209611.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (20, N'https://images.pexels.com/photos/1586795/pexels-photo-1586795.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (21, N'https://images.pexels.com/photos/1878811/pexels-photo-1878811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', N'Trees', 3, 2, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (22, N'https://images.pexels.com/photos/2499777/pexels-photo-2499777.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', N'Sea', 1, 2, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (23, N'https://images.pexels.com/photos/1662628/pexels-photo-1662628.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', N'Human on the rock', 1, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (24, N'https://images.pexels.com/photos/12249412/pexels-photo-12249412.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', N'Sea view', 1, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (25, N'https://images.pexels.com/photos/2677831/pexels-photo-2677831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (26, N'https://images.pexels.com/photos/3066718/pexels-photo-3066718.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 1, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (27, N'https://images.pexels.com/photos/1059039/pexels-photo-1059039.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (28, N'https://images.pexels.com/photos/3585033/pexels-photo-3585033.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (29, N'https://images.pexels.com/photos/7951189/pexels-photo-7951189.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (30, N'https://images.pexels.com/photos/57690/pexels-photo-57690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (31, N'https://images.pexels.com/photos/323645/pexels-photo-323645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', NULL, 2, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (32, N'https://images.pexels.com/photos/2310641/pexels-photo-2310641.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 1, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (33, N'https://images.pexels.com/photos/1450082/pexels-photo-1450082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (34, N'https://images.pexels.com/photos/3389536/pexels-photo-3389536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (35, N'https://images.pexels.com/photos/45222/forest-fog-nature-winter-45222.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (36, N'https://images.pexels.com/photos/2527559/pexels-photo-2527559.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 3, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (37, N'https://images.pexels.com/photos/1152359/pexels-photo-1152359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (38, N'https://images.pexels.com/photos/632522/pexels-photo-632522.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (39, N'https://images.pexels.com/photos/1049298/pexels-photo-1049298.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (40, N'https://images.pexels.com/photos/67566/palm-tree-palm-ocean-summer-67566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 0, 1)
INSERT [dbo].[Photos] ([Id], [Name], [Description], [CategoryId], [ViewNumber], [Status]) VALUES (41, N'https://images.pexels.com/photos/1450353/pexels-photo-1450353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', NULL, 4, 0, 1)
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Categories]
GO

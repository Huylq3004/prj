USE [PhoneStore]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/21/2023 4:19:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[accID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](30) NULL,
	[password] [varchar](30) NULL,
	[fullname] [varchar](30) NULL,
	[phone] [varchar](12) NULL,
	[status] [int] NULL,
	[role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[accID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/21/2023 4:19:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/21/2023 4:19:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[FID] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/21/2023 4:19:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrdDate] [date] NULL,
	[shipdate] [date] NULL,
	[status] [int] NULL,
	[AccID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/21/2023 4:19:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PName] [varchar](255) NULL,
	[price] [int] NULL,
	[imgPath] [varchar](255) NULL,
	[description] [text] NULL,
	[status] [int] NULL,
	[CateID] [int] NULL,
 CONSTRAINT [PK__Products__C5775520CE441E04] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (1, N'user', N'123', N'Nguyen Van B', N'098423212', 1, 0)
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (2, N'admin', N'huy', N'admin1', N'021321312321', 1, 1)
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (4, N'hhhhh@faf.gom', N'hhhhh', N'hhhhh', N'213213213', 1, 0)
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (6, N'wqdwq@gss.com', N'123123', N'dsada', N'12321321', 1, 0)
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (7, N'huylq123@gmail.com', N'12345', N'Le Quang Huy', N'0395308148', 1, 0)
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (8, N'quocanh@fpt.edu.vn', N'quocanh123', N'Nguyen Quoc Anh', N'0932168272', 1, 0)
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role]) VALUES (9, N'tuananh@gmail.com', N'123', N'Dinh Tuan Anh', N'0987654321', 1, 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (1, N'IPHONE')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (2, N'SAMSUNG')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (3, N'OPPO')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (4, N'NOKIA')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (5, N'XIAOMI')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (6, N'VIVO')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (7, N'huy')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (8, N'abc')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (9, N'sgd')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (1, 1, 1, 3)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (2, 1, 2, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (3, 1, 3, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (4, 2, 3, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (5, 2, 7, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (6, 2, 8, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (7, 3, 10, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (8, 4, 6, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (9, 5, 4, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (10, 5, 5, 2)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (11, 6, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (12, 6, 2, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (13, 7, 4, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (14, 7, 7, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (15, 7, 8, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (16, 7, 9, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (17, 8, 6, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (18, 9, 5, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (19, 10, 2, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (20, 10, 7, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (21, 11, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (22, 12, 2, 2)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (23, 13, 2, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (24, 14, 3, 3)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (25, 15, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (26, 15, 2, 3)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (27, 16, 1, 3)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (28, 17, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (29, 18, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (30, 19, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (31, 20, 1, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (32, 21, 6, 10)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (33, 22, 2, 9)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (34, 23, 1, 5)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (35, 23, 2, 2)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (36, 24, 6, 5)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (37, 25, 1, 5)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (38, 25, 2, 5)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (39, 26, 2, 5)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (40, 27, 2, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (41, 27, 5, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (42, 28, 5, 2)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (43, 28, 7, 2)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (44, 29, 9, 1)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (45, 30, 2, 3)
INSERT [dbo].[OrderDetails] ([DetailId], [OrderID], [FID], [quantity]) VALUES (46, 30, 9, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (1, CAST(N'2023-02-20' AS Date), NULL, 3, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (2, CAST(N'2023-02-21' AS Date), NULL, 3, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (3, CAST(N'2023-02-22' AS Date), NULL, 2, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (4, CAST(N'2023-02-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (5, CAST(N'2023-02-24' AS Date), NULL, 2, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (6, CAST(N'2023-02-25' AS Date), NULL, 3, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (7, CAST(N'2023-02-19' AS Date), NULL, 3, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (8, CAST(N'2023-02-17' AS Date), NULL, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (9, CAST(N'2023-02-18' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (10, CAST(N'2023-02-16' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (11, CAST(N'2023-02-28' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (12, CAST(N'2023-02-28' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (13, CAST(N'2023-02-28' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (14, CAST(N'2023-02-28' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (15, CAST(N'2023-03-02' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (16, CAST(N'2023-03-02' AS Date), NULL, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (17, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (18, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (19, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (20, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (21, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (22, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (23, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (24, CAST(N'2023-03-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (25, CAST(N'2023-03-04' AS Date), NULL, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (26, CAST(N'2023-03-04' AS Date), NULL, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (27, CAST(N'2023-03-09' AS Date), NULL, 1, 7)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (28, CAST(N'2023-03-09' AS Date), NULL, 1, 7)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (29, CAST(N'2023-03-13' AS Date), NULL, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (30, CAST(N'2023-03-14' AS Date), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (1, N'IPhone X', 899, N'images/ip8-black.jpg', N'128GB-Black', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (2, N'IPhone 12', 1899, N'images/ip12-blue.jpg', N'256GB-Blue', 0, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (3, N'IPhone XS Max', 1599, N'images/ipxsmax-black.jpg', N'256GB-Black', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (4, N'IPhone 13', 1899, N'images/ip13-starlight.jpg', N'128GB-StarsLights', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (5, N'IPhone 11', 1899, N'images/ip11-white.jpg', N'512GB-White', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (6, N'IPhone 14 ProMax', 2099, N'images/ip14-prmax.jpg', N'256GB-Gold', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (7, N'SamSung Galaxy S22', 1899, N'images/ssglxs22.jpg', N'256GB-Black', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (8, N'SamSung Galaxy A23', 1799, N'images/ssglxa23.jpg', N'512GB-Pink', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (9, N'SamSung S21 Ultra 5G', 1709, N'images/ssglxs21u.jpg', N'512GB-Black', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (10, N'Oppo Reno 6', 1399, N'images/opreno6.jpg', N'512GB-Blu', 1, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (11, N'Oppo F11 Pro', 1299, N'images/opf11pro.jpg', N'64GB-Purple', 1, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (12, N'Xiaomi RedMi Note 10', 1799, N'images/xamredn10.jpg', N'512GB-Green', 1, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (13, N'SamSung Galaxy A71', 1399, N'images/ssglxa71.jpg', N'128GB-Pink Light', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (14, N'Xiaomi Mi 11 Pro', 1699, N'images/xammi11pro.jpg', N'256GB-Purple', 1, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (15, N'Oppo Find X5 Pro', 1799, N'images/picture25.jpg', N'512GB-Black', 2, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (16, N'Oppo Find X5 Pro', 1399, N'images/picture26.jpg', N'128GB-Black', 1, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (17, N'Oppo Find X5 Pro', 1199, N'images/picture27.jpg', N'64GB-Black', 3, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (18, N'Xiaomi Mi 11 Pro', 1599, N'images/xammi11pro.jpg', N'128GB-Purple', 2, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (19, N'Xiaomi Mi 11 Pro', 1499, N'images/xammi11pro.jpg', N'64GB-Purple', 1, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (20, N'Xiaomi Mi 11 Pro', 1799, N'images/xammi11pro.jpg', N'512GB-Purple', 3, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (21, N'Xiaomi RedMi Note 8', 1299, N'images/xamredmi8.jpg', N'256GB-Blu sky', 2, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (22, N'Xiaomi RedMi Note 8', 1199, N'images/xamredmi8.jpg', N'128GB-Blu sky', 1, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (23, N'Nokia C21 Plus', 150, N'images/picture28.jpg', N'64GB-Grey', 2, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (24, N'Nokia C21 Plus', 250, N'images/picture29.jpg', N'256GB-Grey', 3, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (25, N'Nokia C21 Plus', 300, N'images/picture31.jpg', N'512GB-Grey', 1, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (26, N'Nokia C31', 100, N'images/picture32.jpg', N'128GB-Blu', 2, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (27, N'Nokia C31', 200, N'images/picture33.jpg', N'512GB-Blu', 1, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (28, N'Xiaomi 11 Ultra', 1209, N'images/picture39.jpg', N'128GB-White', 2, 5)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (29, N'Oppo Find X5 Pro', 1599, N'images/picture38.jpg', N'256GB-Black', 1, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (30, N'Oppo A93', 1209, N'images/picture37.jpg', N'512GB-Blu Sky', 2, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (31, N'Nokia C21 Plus', 200, N'images/picture36.jpg', N'128GB-Grey', 1, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (32, N'Nokia C31', 150, N'images/picture35.jpg', N'256GB-Blu', 5, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (35, N'SamSung Galaxy Z Series', 1297, N'images/picture25.jpg', N'128GB-Black', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (36, N'SamSung Galaxy Z Series', 1297, N'images/picture26.jpg', N'128GB-Black', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (37, N'IPhone 12 ProMax', 1499, N'images/picture41.jpg', N'128GB-Blu', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (38, N'IPhone Xr', 1099, N'images/picture43.jpg', N'128GB-Black', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (39, N'SamSung A72', 799, N'images/picture46.jpg', N'256GB-Black', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (40, N'SamSung A52', 509, N'images/picture47.jpg', N'64GB-Purple', 1, 2)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (43, N'SamSung A52', 1599, N'images/picture52.jpg', N'256GB-Purple', 1, 3)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (44, N'Nokia 1280', 20, N'images/picture55.jpg', N'1000GB-Black', 1, 4)
INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (45, N'SamSung A52', 1000, N'images/picture57.jpg', N'256GB-Black', 1, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Accounts__AB6E6164881CC03D]    Script Date: 3/21/2023 4:19:44 PM ******/
ALTER TABLE [dbo].[Accounts] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDetail__FID__2E1BDC42] FOREIGN KEY([FID])
REFERENCES [dbo].[Products] ([PID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDetail__FID__2E1BDC42]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Accounts] ([accID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__CateID__300424B4] FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__CateID__300424B4]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([role]=(1) OR [role]=(0)))
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([status]=(1) OR [status]=(0)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([quantity]>=(1)))
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD CHECK  (([status]=(1) OR [status]=(2) OR [status]=(3)))
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK__Products__price__34C8D9D1] CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK__Products__price__34C8D9D1]
GO

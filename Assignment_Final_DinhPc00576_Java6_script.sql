CREATE DATABASE [TPDShop2]
GO
USE [TPDShop2]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/8/2021 8:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[Fullname] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[Verifycode] [nvarchar](64) NULL,
	[Activated] [bit] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[ProductId] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[CreateDate] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[Total] [float] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Image2] [nvarchar](100) NULL,
	[Image3] [nvarchar](100) NULL,
	[Price] [float] NULL,
	[Discount] [int] NULL,
	[CreateDate] [date] NULL,
	[Description] [nvarchar](100) NULL,
	[Available] [bit] NULL,
	[CategoryId] [char](4) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Stars] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/8/2021 8:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dinh1', N'$2a$10$rOk48rXANHI6R3JoyJvv..zxg4haNRe..tOnrvoAFcfH/SKzaZORG', N'Định 1', N'hatdaunho1453@gmail.com', N'0377780019', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dinh2', N'$2a$10$/NO9M/px3VSQGJCByFWWSOBfcSO63GdCl0JF64ERlHAeGCDfOUrsu', N'Định 2', N'hatdaunho1453@gmail.com', N'0377780019', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dinh3', N'$2a$10$/NO9M/px3VSQGJCByFWWSOBfcSO63GdCl0JF64ERlHAeGCDfOUrsu', N'Định 3', N'hatdaunho1453@gmail.com', N'0377780019', N'bhiIYzTJfYtFrxF6q2KEiH3JYvezc8GpuVcrfU5ETZWUtZjxIsZNE9j0qjVvAXxB', 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dinh4', N'$2a$10$.u2ylZ443xUuMtTGrRAw.u.0H0zBplTrbKe50qN/EsqvnOuU6HyPi', N'Định 4', N'hatdaunho1453@gmail.com', N'0377780019', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dinh5', N'$2a$10$/NO9M/px3VSQGJCByFWWSOBfcSO63GdCl0JF64ERlHAeGCDfOUrsu', N'Định 5', N'hatdaunho1453@gmail.com', N'0377780019', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dinh6', N'$2a$10$/NO9M/px3VSQGJCByFWWSOBfcSO63GdCl0JF64ERlHAeGCDfOUrsu', N'Định 6', N'hatdaunho1453@gmail.com', N'0377780019', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [SDT], [Verifycode], [Activated]) VALUES (N'dt1', N'$2a$10$/NO9M/px3VSQGJCByFWWSOBfcSO63GdCl0JF64ERlHAeGCDfOUrsu', N'Định Trần', N'hatdaunho1453@gmail.com', N'0377780019', NULL, 1)
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (1, N'dinh1', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'dinh2', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'dinh3', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'dinh3', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'dinh4', N'STAFF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'dt1', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (11, N'dt1', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (19, N'dinh4', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (27, N'dinh5', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (28, N'dinh6', N'USER')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'BLK ', N'BlackBerry')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'IP  ', N'Iphone')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'MT  ', N'Masstel')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'NKA ', N'Nokia')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'OP  ', N'Oppo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'RM  ', N'Realme')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'SS  ', N'Samsung')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'XIM ', N'Xiaomi')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (6, 12, 1, 2792000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (7, 12, 5, 1890500, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (8, 12, 6, 7133200, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (9, 12, 10, 4400000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10, 13, 19, 380000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (11, 13, 14, 26990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (12, 14, 18, 3490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (13, 14, 13, 2350000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (15, 16, 20, 550000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (16, 16, 10, 4400000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (20, 19, 1, 2792000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (21, 19, 11, 6690000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (22, 20, 17, 2590000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (23, 20, 18, 3490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (24, 21, 23, 3590000, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (12, N'dinh2', CAST(0xA4420B00 AS Date), N'Đường Phan Văn Năm, Bình Minh - Vĩnh Long', 16215700, 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (13, N'dinh2', CAST(0xA4420B00 AS Date), N'Đường Phan Văn Năm, Bình Minh - Vĩnh Long', 27370000, 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (14, N'dinh2', CAST(0xA4420B00 AS Date), N'Đường Phan Văn Năm, Bình Minh - Vĩnh Long', 5840000, 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (16, N'dinh2', CAST(0xAA420B00 AS Date), N'Đường Phan Văn Năm, Bình Minh - Vĩnh Long', 4950000, 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (19, N'dinh6', CAST(0xD9420B00 AS Date), N'thị xã Bình Minh - tỉnh Vĩnh Long', 9482000, 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (20, N'dinh5', CAST(0xD9420B00 AS Date), N'thị xã Bình Minh - tỉnh Vĩnh Long', 6080000, 0)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Total], [Status]) VALUES (21, N'dinh5', CAST(0xD9420B00 AS Date), N'thị xã Bình Minh - tỉnh Vĩnh Long', 3590000, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (1, N'Samsung Galaxy M12 (3GB/32GB)', NULL, NULL, NULL, 3490000, 20, CAST(0x98420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'SS')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (5, N'Nokia 2720 Flip', N'5082748a.jpg', N'c1ae8dcc.jpg', N'31f09bf2.jpg', 1990000, 5, CAST(0x9E420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'NKA')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (6, N'Samsung Galaxy A71 8GB/128GB', N'4b420f5a.jpg', N'8a2bcb99.jpg', N'38669664.jpg', 10490000, 32, CAST(0x9E420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'SS')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (7, N'Samsung Galaxy A51 (128GB/6GB)', NULL, NULL, NULL, 7990000, 31, CAST(0x9E420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'SS')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (8, N'Vsmart Star 5 (3GB/32GB)', NULL, NULL, NULL, 1870000, 0, CAST(0xC1410B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'OP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (9, N'Android Note10', NULL, NULL, NULL, 791000, 0, CAST(0x783F0B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 0, N'OP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (10, N'OPPO A54 4GB-128GB', NULL, NULL, NULL, 4400000, 0, CAST(0x78420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'OP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (11, N'OPPO A74 8GB-128GB', NULL, NULL, NULL, 6690000, 0, CAST(0xF5410B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'OP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (12, N'Xiaomi Redmi 9A 2GB-32GB', NULL, NULL, NULL, 1990000, 0, CAST(0x3B420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 0, N'XIM')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (13, N'Vivo Y1s 2GB-32GB', NULL, NULL, NULL, 2350000, 0, CAST(0x9E420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'OP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (14, N'iPhone 12 Pro 128GB', N'5b83222c.jpg', N'335f6615.png', N'913e332c.jpg', 26990000, 0, CAST(0x7F420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'IP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (15, N'iPhone XR 64GB', N'3779eb93.jpg', N'7a947591.jpg', N'1e5156ab.jpg', 11990000, 0, CAST(0x4D420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'IP')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (16, N'Realme C25 4GB-128GB', NULL, NULL, NULL, 4690000, 0, CAST(0x18420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'RM')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (17, N'Realme C20 2GB-32GB', NULL, NULL, NULL, 2590000, 0, CAST(0x1F420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'RM')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (18, N'Realme C12 3GB-32GB', NULL, NULL, NULL, 3490000, 0, CAST(0x99420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'RM')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (19, N'Masstel Izi 230', NULL, NULL, NULL, 380000, 0, CAST(0xE43F0B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'MT')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (20, N'Masstel Fami P20', NULL, NULL, NULL, 550000, 0, CAST(0xB9400B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'MT')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (21, N'Nokia 5.4 4GB -128GB', NULL, NULL, NULL, 2990000, 0, CAST(0x3C420B00 AS Date), N'Điện thoại bền chất lượng cao, thời trang, giá cả hợp lý. Chần chờ gì nữa mà không mua ngay', 1, N'NKA')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Image2], [Image3], [Price], [Discount], [CreateDate], [Description], [Available], [CategoryId]) VALUES (23, N'BlackBerry Priv', NULL, NULL, NULL, 3590000, 0, CAST(0xA8420B00 AS Date), N'Màn hình cảm ứng AMOLED FullHD 2160px, kính Gorilla Glass 4', 1, N'BLK')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([Id], [Stars], [Username], [ProductId]) VALUES (3, 3, N'dinh2', 23)
SET IDENTITY_INSERT [dbo].[Rating] OFF
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị viên')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAFF', N'Nhân viên')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'USER', N'Khách hàng')
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [fk_auth] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [fk_auth]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_ordO] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_ordO]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_ordP] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_ordP]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_ordA] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_ordA]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_products] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_products]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [fk_rt] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [fk_rt]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [fk_us] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [fk_us]
GO

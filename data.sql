USE [master]
GO
/****** Object:  Database [DecorStoreDB2]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE DATABASE [DecorStoreDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DecorStoreDB2', FILENAME = N'E:\Hochanhcacthu\MSSQL16.MSSQLSERVER\MSSQL\DATA\DecorStoreDB2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DecorStoreDB2_log', FILENAME = N'E:\Hochanhcacthu\MSSQL16.MSSQLSERVER\MSSQL\DATA\DecorStoreDB2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DecorStoreDB2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DecorStoreDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DecorStoreDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DecorStoreDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DecorStoreDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DecorStoreDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DecorStoreDB2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DecorStoreDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET RECOVERY FULL 
GO
ALTER DATABASE [DecorStoreDB2] SET  MULTI_USER 
GO
ALTER DATABASE [DecorStoreDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DecorStoreDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DecorStoreDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DecorStoreDB2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DecorStoreDB2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DecorStoreDB2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DecorStoreDB2', N'ON'
GO
ALTER DATABASE [DecorStoreDB2] SET QUERY_STORE = ON
GO
ALTER DATABASE [DecorStoreDB2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DecorStoreDB2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID_CATE] [int] IDENTITY(1,1) NOT NULL,
	[CATE_NAME] [nvarchar](150) NOT NULL,
	[LINK] [nvarchar](300) NULL,
	[HIDE] [int] NULL,
	[DESCRIPTION] [ntext] NULL,
	[IMG] [nvarchar](300) NULL,
 CONSTRAINT [PK__Category__7A169070B143E042] PRIMARY KEY CLUSTERED 
(
	[ID_CATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[ID_FAVO] [int] NOT NULL,
	[ID_USER] [nvarchar](450) NOT NULL,
	[ID_PROD] [int] NOT NULL,
	[DATE] [datetime] NULL,
 CONSTRAINT [PK__Favorite__6CC98A524F17FB87] PRIMARY KEY CLUSTERED 
(
	[ID_FAVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_ORDER] [int] IDENTITY(1,1) NOT NULL,
	[ID_USER] [nvarchar](450) NOT NULL,
	[ORDER_DATE] [datetime] NULL,
	[ADDRESS] [ntext] NULL,
	[TOTAL_PRICE] [decimal](18, 0) NULL,
	[NOTES] [ntext] NULL,
	[IS_PAY] [bit] NULL,
	[IS_COMPLETE] [bit] NULL,
	[PT_THANHTOAN] [nvarchar](50) NULL,
	[UserCustomId] [nvarchar](450) NULL,
 CONSTRAINT [PK__Order__D23A856506D6AA6F] PRIMARY KEY CLUSTERED 
(
	[ID_ORDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ORDER] [int] NOT NULL,
	[ID_PROD] [int] NOT NULL,
	[PRICE] [decimal](18, 0) NULL,
	[QUANTITY] [int] NULL,
	[SALE] [decimal](18, 0) NULL,
 CONSTRAINT [PK__OrderDet__3214EC2781B8D563] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID_PRODUCER] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCER_NAME] [nvarchar](150) NULL,
	[EMAIL] [nvarchar](150) NULL,
	[PHONE_NUMS] [nvarchar](50) NULL,
	[ADDRESS] [nvarchar](150) NULL,
	[IMG] [nvarchar](150) NULL,
	[HIDE] [int] NULL,
 CONSTRAINT [PK__Producer__88BD7532785392CC] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19/04/2024 11:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_PROD] [int] NOT NULL,
	[PROD_NAME] [nvarchar](150) NOT NULL,
	[ALIAS_NAME] [nvarchar](150) NULL,
	[ID_CATE] [int] NOT NULL,
	[ID_PRODUCER] [int] NOT NULL,
	[UNIT] [nvarchar](50) NULL,
	[PRICE] [decimal](18, 0) NULL,
	[IMG1] [nvarchar](300) NULL,
	[IMG2] [nvarchar](300) NULL,
	[IMG3] [nvarchar](300) NULL,
	[NSX] [datetime] NULL,
	[SALE] [decimal](18, 0) NULL,
	[DESCRIPTION] [nvarchar](150) NULL,
	[LINK] [nvarchar](300) NULL,
	[HIDE] [int] NULL,
	[NUMS] [int] NULL,
 CONSTRAINT [PK__Product__BA497EFEC97E67E7] PRIMARY KEY CLUSTERED 
(
	[ID_PROD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240417201022_v1', N'8.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a92b6af1-f4c8-4d7d-9881-4bc7add63d0a', N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c51c5741-96aa-4317-ad3a-35ba16a3ef3b', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4cdf7585-52cf-4db5-9a52-cf81e1549e0a', N'a92b6af1-f4c8-4d7d-9881-4bc7add63d0a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0fc96567-8cd7-4ee7-b8d1-5c65fc7d9b44', N'c51c5741-96aa-4317-ad3a-35ba16a3ef3b')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0fc96567-8cd7-4ee7-b8d1-5c65fc7d9b44', N'bd', N'Nghia', N'Admin', N'ADMIN', N'yspro191@gmail.com', N'YSPRO191@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJ6rcsWbpXmwU8tP5hleO0RfD9abk4MrBL0hVvwejl4nk1OVw1JVgjqSt/iNkpOr6A==', N'TAFQLBOBAC5XMGWGIF2IARL2RCXEOJUH', N'ecfe04ca-f90f-4a97-95d5-18b5292835e3', N'123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4cdf7585-52cf-4db5-9a52-cf81e1549e0a', N'bd', N'member', N'member1', N'MEMBER1', N'test@gmail.com', N'TEST@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEOU+M/CFjWeb9V6wwlr7K3ZDWDwg8jMrfyeWnb255iIBXcc/9F6FKATjMTtjueNw2g==', N'DEHMQLGAWVES2BQTHJQUIMJ3BFGC5LL2', N'93959e2f-e0cb-46f3-8ff0-ddd045e60129', N'123456789', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (1, N'Mô Hình', N'mo-hinh', 0, NULL, N'Gundam5(1).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (2, N'Lót Chuột', N'lot-chuot', 0, NULL, N'Lotchuot2(1).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (3, N'Đèn Bàn - Đèn Ngủ', N'den-ban-den-ngu', 0, NULL, N'Denban2(3).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (4, N'Loa', N'loa', 0, NULL, N'Loa3(1).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (5, N'Bàn Ghế', N'ban-ghe', 0, NULL, N'Ghe2(3).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (6, N'Poster', N'pos-ter', 0, NULL, N'Poster3(1).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (7, N'Kệ Tủ', N'ke-tu', 0, NULL, N'Ke5(3).jpg')
INSERT [dbo].[Category] ([ID_CATE], [CATE_NAME], [LINK], [HIDE], [DESCRIPTION], [IMG]) VALUES (8, N'PegBoard', N'peg-board', 0, NULL, N'Pegboard5(3).jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID_ORDER], [ID_USER], [ORDER_DATE], [ADDRESS], [TOTAL_PRICE], [NOTES], [IS_PAY], [IS_COMPLETE], [PT_THANHTOAN], [UserCustomId]) VALUES (1, N'19a8a6d9-c7f9-4bfb-bfe6-f172c826b863', CAST(N'2024-04-19T01:31:12.867' AS DateTime), NULL, CAST(58 AS Decimal(18, 0)), NULL, 0, 0, N'Tiền mặt', NULL)
INSERT [dbo].[Order] ([ID_ORDER], [ID_USER], [ORDER_DATE], [ADDRESS], [TOTAL_PRICE], [NOTES], [IS_PAY], [IS_COMPLETE], [PT_THANHTOAN], [UserCustomId]) VALUES (2, N'19a8a6d9-c7f9-4bfb-bfe6-f172c826b863', CAST(N'2024-04-19T01:39:39.127' AS DateTime), N'Bd', CAST(38 AS Decimal(18, 0)), N'hehe', 0, 0, N'Tiền mặt', NULL)
INSERT [dbo].[Order] ([ID_ORDER], [ID_USER], [ORDER_DATE], [ADDRESS], [TOTAL_PRICE], [NOTES], [IS_PAY], [IS_COMPLETE], [PT_THANHTOAN], [UserCustomId]) VALUES (3, N'19a8a6d9-c7f9-4bfb-bfe6-f172c826b863', CAST(N'2024-04-19T03:16:31.530' AS DateTime), NULL, CAST(39 AS Decimal(18, 0)), N'da thanh toan', 0, 0, N'Tiền mặt', NULL)
INSERT [dbo].[Order] ([ID_ORDER], [ID_USER], [ORDER_DATE], [ADDRESS], [TOTAL_PRICE], [NOTES], [IS_PAY], [IS_COMPLETE], [PT_THANHTOAN], [UserCustomId]) VALUES (4, N'19a8a6d9-c7f9-4bfb-bfe6-f172c826b863', CAST(N'2024-04-19T03:19:54.593' AS DateTime), NULL, CAST(39 AS Decimal(18, 0)), N'da thanh toan', 1, 0, N'Paypal', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [ID_ORDER], [ID_PROD], [PRICE], [QUANTITY], [SALE]) VALUES (1, 1, 6, CAST(19 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[OrderDetail] ([ID], [ID_ORDER], [ID_PROD], [PRICE], [QUANTITY], [SALE]) VALUES (2, 1, 1, CAST(39 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[OrderDetail] ([ID], [ID_ORDER], [ID_PROD], [PRICE], [QUANTITY], [SALE]) VALUES (3, 2, 3, CAST(19 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[OrderDetail] ([ID], [ID_ORDER], [ID_PROD], [PRICE], [QUANTITY], [SALE]) VALUES (4, 2, 11, CAST(19 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[OrderDetail] ([ID], [ID_ORDER], [ID_PROD], [PRICE], [QUANTITY], [SALE]) VALUES (5, 3, 1, CAST(39 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[OrderDetail] ([ID], [ID_ORDER], [ID_PROD], [PRICE], [QUANTITY], [SALE]) VALUES (6, 4, 1, CAST(39 AS Decimal(18, 0)), 1, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (1, N'BanDai', NULL, NULL, NULL, N'Bandai.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (2, N'Pulsar', NULL, NULL, NULL, N'Pulsar.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (3, N'Xiaomi', NULL, NULL, NULL, N'Xiaomi.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (4, N'JBL', NULL, NULL, NULL, N'JBL.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (5, N'IKEA', NULL, NULL, NULL, N'IKEA.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (6, N'Titan', NULL, NULL, NULL, N'Titan.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (7, N'Ketu', NULL, NULL, NULL, N'Epione.jpg', 0)
INSERT [dbo].[Producer] ([ID_PRODUCER], [PRODUCER_NAME], [EMAIL], [PHONE_NUMS], [ADDRESS], [IMG], [HIDE]) VALUES (8, N'PegBoard', NULL, NULL, NULL, N'Edifier.jpg', 0)
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (1, N'Mô hình lắp ráp Gundam HG Seed Blaze Zaku Phantom', N'Gundam HG Seed Blaze Zaku Phantom', 1, 1, N'Bộ', CAST(39 AS Decimal(18, 0)), N'Gundam1(1).jpg', N'Gundam1(2).jpg', N'Gundam1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Mô hình lắp ráp Gundam HG Seed Blaze Zaku Phantom', N'mo-hinh-lap-rap-gundam-hg-seed-blaze-zaku-phantom', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (2, N'Mô hình HG CE Black Knight Squad Shi-ve A', N'Mô hình HG CE Black Knight Squad Shi-ve A', 1, 1, N'Bộ', CAST(49 AS Decimal(18, 0)), N'Gundam2(1).jpg', N'Gundam2(2).jpg', N'Gundam2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Mô Hình HG CE Black Knight Squad Shi-ve A', N'hg-ce-black-knight-squad-shi-ve-a', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (3, N'RG 35 Wing Gundam – Mô hình lắp ráp Gundam Bandai', N'RG 35 Wing Gundam – Mô hình lắp ráp Gundam Bandai', 1, 1, N'Bộ', CAST(19 AS Decimal(18, 0)), N'Gundam3(1).jpg', N'Gundam3(2).jpg', N'Gundam3(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'Mô Hình RG 35 Wing Gundam – Mô hình lắp ráp Gundam Bandai', N'rg-35-wing-gundam-–-mo-hinh-lap-rap-gundam-bandai', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (4, N'RG 04 MS-06F Zaku II – Mô hình lắp ráp Gundam Bandai', N'RG 04 MS-06F Zaku II – Mô hình lắp ráp Gundam Bandai', 1, 1, N'Bộ', CAST(49 AS Decimal(18, 0)), N'Gundam4(1).jpg', N'Gundam4(2).jpg', N'Gundam4(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Mô Hình RG 04 MS-06F Zaku II – Mô hình lắp ráp Gundam Bandai', N'rg-04-ms-06f-zaku-ii-–-mo-hinh-lap-rap-gundam-bandai', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (5, N'HG Gundam Calibarn – Mô hình lắp ráp Gundam Bandai', N'HG Gundam Calibarn – Mô hình lắp ráp Gundam Bandai', 1, 1, N'Bộ', CAST(99 AS Decimal(18, 0)), N'Gundam5(1).jpg', N'Gundam5(2).jpg', N'Gundam5(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'HG Gundam Calibarn – Mô hình lắp ráp Gundam Bandai', N'hg-gundam-calibarn-–-mo-hinh-lap-rap-gundam-bandai', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (6, N'LÓT CHUỘT MINIMALISM CỠ LỚN', N'LÓT CHUỘT MINIMALISM CỠ LỚN', 2, 2, N'Miếng', CAST(19 AS Decimal(18, 0)), N'Lotchuot1(1).jpg', N'Lotchuot1(2).jpg', N'Lotchuot1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'LÓT CHUỘT MINIMALISM CỠ LỚN', N'lot-chuot-minimalism-co-lon', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (7, N'COMBO KÊ TAY & LÓT CHUỘT SILICON 3D', N'COMBO KÊ TAY & LÓT CHUỘT SILICON 3D', 2, 2, N'Miếng', CAST(29 AS Decimal(18, 0)), N'Lotchuot2(1).jpg', N'Lotchuot2(1).jpg', N'Lotchuot2(1).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'COMBO KÊ TAY & LÓT CHUỘT SILICON 3D', N'combo-ke-tay-and-lot-chuot-silicon-3d', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (8, N'LÓT CHUỘT GAMING CỠ LỚN', N'LÓT CHUỘT GAMING CỠ LỚN', 2, 2, N'Miếng', CAST(19 AS Decimal(18, 0)), N'Lotchuot3(1).jpg', N'Lotchuot3(2).jpg', N'Lotchuot3(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'LÓT CHUỘT GAMING CỠ LỚN', N'lot-chuot-gaming-co-lon', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (9, N'LÓT CHUỘT SILICON 3D – NHIỀU MẪU', N'LÓT CHUỘT SILICON 3D – NHIỀU MẪU', 2, 2, N'Miếng', CAST(39 AS Decimal(18, 0)), N'Lotchuot4(1).jpg', N'Lotchuot4(2).jpg', N'Lotchuot4(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'LÓT CHUỘT SILICON 3D – NHIỀU MẪU', N'lot-chuot-silicon-3d-–-nhieu-mau', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (10, N'LÓT CHUỘT LED RGB CỠ LỚN 80X30 | 90X40 DÀY 4MM', N'LÓT CHUỘT LED RGB CỠ LỚN 80X30 | 90X40 DÀY 4MM', 2, 2, N'Miếng', CAST(20 AS Decimal(18, 0)), N'Lotchuot5(1).jpg', N'Lotchuot5(2).jpg', N'Lotchuot5(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'LÓT CHUỘT LED RGB CỠ LỚN 80X30 | 90X40 DÀY 4MM', N'lot-chuot-led-rgb-co-lon-80x30-90x40-day-4mm', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (11, N'Đèn học thông minh XIAOMI Mijia Table Lamp Lite', N'Đèn học thông minh XIAOMI Mijia Table Lamp Lite', 3, 3, N'Cái', CAST(19 AS Decimal(18, 0)), N'Denban1(1).jpg', N'Denban1(2).jpg', N'Denban1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Đèn học thông minh XIAOMI Mijia Table Lamp Lite', N'djen-hoc-thong-minh-xiaomi-mijia-table-lamp-lite', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (12, N'Đèn bàn không dây LED Xiaomi Yeelight Z1 Pro YLTD14YL', N'Đèn bàn không dây LED Xiaomi Yeelight Z1 Pro YLTD14YL', 3, 3, N'Cái', CAST(19 AS Decimal(18, 0)), N'Denban2(1).jpg', N'Denban2(2).jpg', N'Denban2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Đèn bàn không dây LED Xiaomi Yeelight Z1 Pro YLTD14YL', N'djen-ban-khong-day-led-xiaomi-yeelight-z1-pro-yltd14yl', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (13, N'Đèn ngủ trang trí đèn led silicon cảm ứng mèo mini', N'Đèn ngủ trang trí đèn led silicon cảm ứng mèo mini', 3, 3, N'Cái', CAST(29 AS Decimal(18, 0)), N'Denngu1(1).jpg', N'Denngu1(2).jpg', N'Denngu1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'Đèn ngủ trang trí đèn led silicon cảm ứng mèo mini', N'djen-ngu-trang-tri-djen-led-silicon-cam-ung-meo-mini', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (14, N'Đèn ngủ gà con dễ thương - pin sạc', N'Đèn ngủ gà con dễ thương - pin sạc', 3, 3, N'Cái', CAST(39 AS Decimal(18, 0)), N'Denngu2(1).jpg', N'Denngu2(2).jpg', N'Denngu2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Đèn ngủ gà con dễ thương - pin sạc', N'djen-ngu-ga-con-de-thuong-pin-sac', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (15, N'Xiaomi Youpin Đèn Ngủ LED 3 Bóng Silicone Hình Vịt ', N'Xiaomi Youpin Đèn Ngủ LED 3 Bóng Silicone Dạng Bóp Hình Vịt Dễ Thương Trang Trí Phòng Ngủ', 3, 3, N'Cái', CAST(39 AS Decimal(18, 0)), N'Denngu3(1).jpg', N'Denngu3(1).jpg', N'Denngu3(1).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Xiaomi Youpin Đèn Ngủ LED 3 Bóng Silicone Dạng Bóp Hình Vịt Dễ Thương Trang Trí Phòng Ngủ', N'xiaomi-youpin-djen-ngu-led-3-bong-silicone-dang-bop-hinh-vit-de-thuong-trang-tri-phong-ngu', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (16, N'JBL Authentics 300', N'JBL Authentics 300', 4, 4, N'Bộ', CAST(59 AS Decimal(18, 0)), N'Loa1(1).jpg', N'Loa1(2).jpg', N'Loa1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'JBL Authentics 300', N'jbl-authentics-300', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (17, N'JBL Pulse 5', N'JBL Pulse 5', 4, 4, N'Bộ', CAST(39 AS Decimal(18, 0)), N'Loa2(1).jpg', N'Loa2(2).jpg', N'Loa2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'JBL Pulse 5', N'jbl-pulse-5', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (18, N'JBL Go Essential', N'JBL Go Essential', 4, 4, N'Bộ', CAST(49 AS Decimal(18, 0)), N'Loa3(1).jpg', N'Loa3(1).jpg', N'Loa3(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'JBL Go Essential', N'jbl-go-essential', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (19, N'JBL Xtreme 3', N'JBL Xtreme 3', 4, 4, N'Bộ', CAST(39 AS Decimal(18, 0)), N'Loa4(1).jpg', N'Loa4(2).jpg', N'Loa4(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'JBL Xtreme 3', N'jbl-xtreme-3', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (20, N'JBL Flip 5', N'JBL Flip 5', 4, 4, N'Bộ', CAST(29 AS Decimal(18, 0)), N'Loa5(1).jpg', N'Loa5(2).jpg', N'Loa5(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'JBL Flip 5', N'jbl-flip-5', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (21, N'Bàn trang trí phòng khách có ngăn kéo gỗ cao su CST063', N'Bàn trang trí phòng khách có ngăn kéo 110x30x85cm gỗ cao su CST063', 5, 5, N'Bộ', CAST(39 AS Decimal(18, 0)), N'Ban1(1).jpg', N'Ban1(2).jpg', N'Ban1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Bàn trang trí phòng khách có ngăn kéo 110x30x85cm gỗ cao su CST063', N'ban-trang-tri-phong-khach-co-ngan-keo-110x30x85cm-go-cao-su-cst063', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (22, N'Bàn sofa gỗ kết hợp nhà thú cưng gỗ cao su TT68253', N'Bàn sofa gỗ kết hợp nhà cho thú cưng 100x50x45cm gỗ cao su TT68253', 5, 5, N'Bộ', CAST(49 AS Decimal(18, 0)), N'Ban2(1).jpg', N'Ban2(2).jpg', N'Ban2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Bàn sofa gỗ kết hợp nhà cho thú cưng 100x50x45cm gỗ cao su TT68253', N'ban-sofa-go-ket-hop-nha-cho-thu-cung-100x50x45cm-go-cao-su-tt68253', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (23, N'Bàn sofa tròn 60cm chân gỗ hình sao TT68180', N'Bàn sofa tròn 60cm chân gỗ hình sao TT68180', 5, 5, N'Bộ', CAST(29 AS Decimal(18, 0)), N'Ban3(1).jpg', N'Ban3(1).jpg', N'Ban3(1).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'Bàn sofa tròn 60cm chân gỗ hình sao TT68180', N'ban-sofa-tron-60cm-chan-go-hinh-sao-tt68180', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (24, N'Ghế xoay học xinh lưng lưới HOGVP160', N'Ghế xoay học xinh lưng lưới HOGVP160', 5, 5, N'Bộ', CAST(19 AS Decimal(18, 0)), N'Ghe1(1).jpg', N'Ghe1(2).jpg', N'Ghe1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Ghế xoay học xinh lưng lưới HOGVP160', N'ghe-xoay-hoc-xinh-lung-luoi-hogvp160', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (25, N'Ghế Neva bọc nệm khung gỗ cao su GCF210', N'Ghế Neva bọc nệm khung gỗ cao su GCF210', 5, 5, N'Bộ', CAST(29 AS Decimal(18, 0)), N'Ghe2(1).jpg', N'Ghe2(2).jpg', N'Ghe2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Ghế Neva bọc nệm khung gỗ cao su GCF210', N'ghe-neva-boc-nem-khung-go-cao-su-gcf210', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (26, N'Set 13 / 14 Tấm Poster Treo Tường Phong Cách Retro ST327', N'Set 13 / 14 Tấm Poster Treo Tường Trang Trí Phong Cách Retro Đẹp Mắt ST327', 6, 6, N'Tấm', CAST(3 AS Decimal(18, 0)), N'Poster1(1).jpg', N'Poster1(2).jpg', N'Poster1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Set 13 / 14 Tấm Poster Treo Tường Trang Trí Phong Cách Retro Đẹp Mắt ST327', N'set-13-14-tam-poster-treo-tuong-trang-tri-phong-cach-retro-djep-mat-st327', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (27, N'100 tờ Tranh dán tường Anime, poster dán tường Anime manga ', N'100 tờ Tranh dán tường Anime, poster dán tường Anime manga trang trí phòng, decor góc học tập làm việc', 6, 6, N'Tấm', CAST(5 AS Decimal(18, 0)), N'Poster2(1).jpg', N'Poster2(2).jpg', N'Poster1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'100 tờ Tranh dán tường Anime, poster dán tường Anime manga trang trí phòng, decor góc học tập làm việc', N'100-to-tranh-dan-tuong-anime-poster-dan-tuong-anime-manga-trang-tri-phong-decor-goc-hoc-tap-lam-viec', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (28, N'Ảnh dán tường decor THỎ STATIONERY poster tranh decor ', N'Ảnh dán tường decor THỎ STATIONERY poster tranh decor phòng ngủ vintage đồ trang trí bàn học', 6, 6, N'Tấm', CAST(4 AS Decimal(18, 0)), N'Poster3(1).jpg', N'Poster3(2).jpg', N'Poster3(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Ảnh dán tường decor THỎ STATIONERY poster tranh decor phòng ngủ vintage đồ trang trí bàn học', N'anh-dan-tuong-decor-tho-stationery-poster-tranh-decor-phòng-ngủ-vintage-djo-trang-tri-ban-hoc', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (29, N'Ảnh dán tường decor THỎ STATIONERY poster tranh decor ', N'Ảnh dán tường decor THỎ STATIONERY poster tranh decor phòng ngủ vintage đồ trang trí bàn học', 6, 6, N'Tấm', CAST(4 AS Decimal(18, 0)), N'Poster4(1).jpg', N'Poster4(2).jpg', N'Poster4(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Ảnh dán tường decor THỎ STATIONERY poster tranh decor phòng ngủ vintage đồ trang trí bàn học', N'anh-dan-tuong-decor-tho-stationery-poster-tranh-decor-phòng-ngủ-vintage-djo-trang-tri-ban-hoc1', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (30, N'Set 20 tranh phong cách Aesthetic trang trí bàn học, phòng ngủ', N'Set 20 tranh phong cách Aesthetic trang trí bàn học, phòng ngủ', 6, 6, N'Tấm', CAST(3 AS Decimal(18, 0)), N'Poster5(1).jpg', N'Poster5(1).jpg', N'Poster5(1).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Set 20 tranh phong cách Aesthetic trang trí bàn học, phòng ngủ', N'set-20-tranh-phong-cach-aesthetic-trang-tri-ban-hoc-phong-ngu', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (31, N'Kệ trang trí 90x30x180cm gỗ cao su khung sắt', N'Kệ trang trí 90x30x180cm gỗ cao su khung sắt', 7, 7, N'Cái', CAST(29 AS Decimal(18, 0)), N'Ke1(1).jpg', N'Ke1(2).jpg', N'Ke1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Kệ trang trí 90x30x180cm gỗ cao su khung sắt', N'ke-trang-tri-90x30x180cm-go-cao-su-khung-sat', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (32, N'Kệ trang trí có tủ 64x36x160cm gỗ cao su khung sắt', N'Kệ trang trí có tủ 64x36x160cm gỗ cao su khung sắt', 7, 7, N'Cái', CAST(35 AS Decimal(18, 0)), N'Ke2(1).jpg', N'Ke2(2).jpg', N'Ke2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Kệ trang trí có tủ 64x36x160cm gỗ cao su khung sắt', N'ke-trang-tri-co-tu-64x36x160cm-go-cao-su-khung-sat', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (33, N'Kệ trang trí 5 tầng 100x30x160cm gỗ tràm', N'Kệ trang trí 5 tầng 100x30x160cm gỗ tràm', 7, 7, N'Cái', CAST(40 AS Decimal(18, 0)), N'Ke3(1).jpg', N'Ke3(2).jpg', N'Ke3(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'Kệ trang trí 5 tầng 100x30x160cm gỗ tràm', N'ke-trang-tri-5-tang-100x30x160cm-go-tram', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (34, N'Kệ sách treo tường 200x40x100cm gỗ cao su', N'Kệ sách treo tường 200x40x100cm gỗ cao su', 7, 7, N'Cái', CAST(59 AS Decimal(18, 0)), N'Ke4(1).jpg', N'Ke4(1).jpg', N'Ke4(1).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Kệ sách treo tường 200x40x100cm gỗ cao su', N'ke-sach-treo-tuong-200x40x100cm-go-cao-su', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (35, N'Kệ treo tường 3 tầng 64x25x80cm', N'Kệ treo tường 3 tầng 64x25x80cm', 7, 7, N'Cái', CAST(49 AS Decimal(18, 0)), N'Ke5(1).jpg', N'Ke5(2).jpg', N'Ke5(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Kệ treo tường 3 tầng 64x25x80cm', N'ke-treo-tuong-3-tang-64x25x80cm', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (36, N'Bảng treo đồ pegboard dán tường', N'Bảng treo đồ pegboard dán tường', 8, 8, N'Cái', CAST(18 AS Decimal(18, 0)), N'Pegboard1(1).jpg', N'Pegboard1(2).jpg', N'Pegboard1(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Kệ pegboard dán tường', N'ke-pegboard-dan-tuong', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (37, N'Bảng treo đồ Pegboard xoay HyperWork Đen', N'Bảng treo đồ Pegboard xoay HyperWork Đen', 8, 8, N'Cái', CAST(29 AS Decimal(18, 0)), N'Pegboard2(1).jpg', N'Pegboard2(2).jpg', N'Pegboard2(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Bảng treo đồ Pegboard xoay HyperWork Đen', N'bang-treo-djo-pegboard-xoay-hyperwork-djen', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (38, N'Bảng treo đồ Pegboard xoay HyperWork Trắng', N'Bảng treo đồ Pegboard xoay HyperWork Trắng', 8, 8, N'Cái', CAST(29 AS Decimal(18, 0)), N'Pegboard3(1).jpg', N'Pegboard3(2).jpg', N'Pegboard3(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Bảng treo đồ Pegboard xoay HyperWork Trắng', N'bang-treo-djo-pegboard-xoay-hyperwork-trang', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (39, N'BẢNG CÀI TREO TƯỜNG PEGBOARD NHIỀU MÀU', N'BẢNG CÀI TREO TƯỜNG PEGBOARD NHIỀU MÀU', 8, 8, N'Cái', CAST(12 AS Decimal(18, 0)), N'Pegboard4(1).jpg', N'Pegboard4(2).jpg', N'Pegboard4(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(20 AS Decimal(18, 0)), N'BẢNG CÀI TREO TƯỜNG PEGBOARD NHIỀU MÀU', N'bang-cai-treo-tuong-pegboard-nhieu-mau', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (40, N'Bảng lỗ PEGBOARD Gỗ treo tường có phụ kiện đi kèm ', N'Bảng lỗ PEGBOARD Gỗ treo tường có phụ kiện đi kèm decor trang trí', 8, 8, N'Cái', CAST(15 AS Decimal(18, 0)), N'Pegboard5(1).jpg', N'Pegboard5(2).jpg', N'Pegboard5(3).jpg', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Bảng lỗ PEGBOARD Gỗ treo tường có phụ kiện đi kèm decor trang trí', N'bang-lo-pegboard-go-treo-tuong-co-phu-kien-dji-kem-decor-trang-tri', 0, 100)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (41, N'testne', N'1', 1, 1, N'1', CAST(1 AS Decimal(18, 0)), N'Gundam1(1).jpg', N'Gundam1(2).jpg', N'Gundam1(3).jpg', NULL, NULL, N'1', NULL, NULL, 1)
INSERT [dbo].[Product] ([ID_PROD], [PROD_NAME], [ALIAS_NAME], [ID_CATE], [ID_PRODUCER], [UNIT], [PRICE], [IMG1], [IMG2], [IMG3], [NSX], [SALE], [DESCRIPTION], [LINK], [HIDE], [NUMS]) VALUES (42, N'testnuane', N'1', 4, 4, N'1', CAST(1 AS Decimal(18, 0)), N'Gundam2(1).jpg', N'Gundam2(2).jpg', N'Gundam2(3).jpg', NULL, NULL, N'1', NULL, NULL, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_UserCustomId]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_UserCustomId] ON [dbo].[Order]
(
	[UserCustomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_ORDER]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_ORDER] ON [dbo].[OrderDetail]
(
	[ID_ORDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_CATE]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_CATE] ON [dbo].[Product]
(
	[ID_CATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_PRODUCER]    Script Date: 19/04/2024 11:21:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_PRODUCER] ON [dbo].[Product]
(
	[ID_PRODUCER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers_UserCustomId] FOREIGN KEY([UserCustomId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers_UserCustomId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([ID_ORDER])
REFERENCES [dbo].[Order] ([ID_ORDER])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ID_ORDER])
REFERENCES [dbo].[Product] ([ID_PROD])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ID_CATE])
REFERENCES [dbo].[Category] ([ID_CATE])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([ID_PRODUCER])
REFERENCES [dbo].[Producer] ([ID_PRODUCER])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
USE [master]
GO
ALTER DATABASE [DecorStoreDB2] SET  READ_WRITE 
GO

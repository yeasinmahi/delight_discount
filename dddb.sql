USE [master]
GO
/****** Object:  Database [DDDB]    Script Date: 8/12/2017 4:09:56 PM ******/
CREATE DATABASE [DDDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DDDB', FILENAME = N'C:\SQL Data\delightdiscount\DDDB_data.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DDDB_log', FILENAME = N'C:\SQL Data\delightdiscount\DDDB_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DDDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DDDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DDDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DDDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DDDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DDDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DDDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DDDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DDDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DDDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DDDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DDDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DDDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DDDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DDDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DDDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DDDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DDDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DDDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DDDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DDDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DDDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DDDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DDDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DDDB] SET RECOVERY FULL 
GO
ALTER DATABASE [DDDB] SET  MULTI_USER 
GO
ALTER DATABASE [DDDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DDDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DDDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DDDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DDDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DDDB]
GO
/****** Object:  User [dd]    Script Date: 8/12/2017 4:10:00 PM ******/
CREATE USER [dd] FOR LOGIN [dd] WITH DEFAULT_SCHEMA=[dd]
GO
ALTER ROLE [db_owner] ADD MEMBER [dd]
GO
/****** Object:  Schema [dd]    Script Date: 8/12/2017 4:10:02 PM ******/
CREATE SCHEMA [dd]
GO
/****** Object:  Table [dbo].[tbl_AutoTransferId]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AutoTransferId](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_AutoTransferId] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_BalanceTransferHistory]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_BalanceTransferHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TransferId] [varchar](50) NULL,
	[CID] [varchar](50) NULL,
	[TransferDate] [date] NULL,
	[Amount] [float] NULL,
	[Status] [varchar](50) NULL,
	[ApproveBy] [varchar](50) NULL,
	[ApproveDate] [date] NULL,
 CONSTRAINT [PK_tbl_BalanceTransferHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Operator]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Operator](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
	[Name] [varchar](100) NULL,
	[CID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](500) NULL,
	[Mobile] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Status] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_Operator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ShopInfo]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ShopInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShopName] [varchar](100) NULL,
	[ShopLocation] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Rank] [int] NULL,
	[Status] [varchar](1) NULL,
	[ShopLogo] [varbinary](max) NULL,
	[EntryBy] [varchar](50) NULL,
	[EntryDate] [date] NULL,
 CONSTRAINT [PK_tbl_ShopInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ShopLocation]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ShopLocation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_ShopLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserAccount]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
	[CID] [varchar](50) NULL,
	[DatDate] [date] NULL,
	[TranType] [int] NULL,
	[TranCID] [varchar](50) NULL,
	[Amount] [float] NULL,
	[DebitCredit] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserInfo]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AutoUserID] [varchar](50) NULL,
	[CID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[UseName] [varchar](50) NULL,
	[FullName] [varchar](100) NULL,
	[PresentAddress] [varchar](500) NULL,
	[ParmanentAddress] [varchar](500) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[NomineeName] [varchar](50) NULL,
	[Relation] [varchar](50) NULL,
	[NomineeMobile] [varchar](50) NULL,
	[ReferenceCid] [varchar](50) NULL,
	[JoinDate] [date] NULL,
	[SpotInCome] [float] NULL,
	[LevelIncome] [float] NULL,
	[AutoIncome] [float] NULL,
	[CurrentLevel] [int] NULL,
	[IsActive] [varchar](1) NULL,
	[UserPic] [varbinary](max) NULL,
	[EntryBy] [varchar](50) NULL,
	[EntryDate] [date] NULL,
 CONSTRAINT [PK_tbl_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserSpotTrack]    Script Date: 8/12/2017 4:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserSpotTrack](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[SID] [varchar](50) NULL,
	[IsAvailable] [varchar](1) NULL,
	[UCID] [varchar](50) NULL,
	[SlTrk] [int] NULL,
 CONSTRAINT [PK_tbl_UserSpotTrack] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Operator] ON 

INSERT [dbo].[tbl_Operator] ([Id], [UserId], [Name], [CID], [Password], [Email], [Mobile], [Type], [Status]) VALUES (1, N'admin', N'Delight Discount', NULL, N'dd@54321', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Operator] OFF
SET IDENTITY_INSERT [dbo].[tbl_ShopLocation] ON 

INSERT [dbo].[tbl_ShopLocation] ([Id], [LocationName]) VALUES (1, N'DHAKA')
INSERT [dbo].[tbl_ShopLocation] ([Id], [LocationName]) VALUES (2, N'CHITTAGONG')
INSERT [dbo].[tbl_ShopLocation] ([Id], [LocationName]) VALUES (3, N'COMILLA')
SET IDENTITY_INSERT [dbo].[tbl_ShopLocation] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserAccount] ON 

INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (7, N'DD-2017-000001', N'DD00001', CAST(N'2017-08-09' AS Date), 1, N'DD00002', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (8, N'DD-2017-000001', N'DD00001', CAST(N'2017-08-10' AS Date), 1, N'DD00003', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (9, N'DD-2017-000003', N'DD00003', CAST(N'2017-08-10' AS Date), 1, N'DD00012', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (10, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00013', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (11, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00014', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (12, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00015', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (13, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00016', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (14, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00017', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (15, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00018', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (16, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00019', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (17, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00020', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (18, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00021', 150, N'Credit')
INSERT [dbo].[tbl_UserAccount] ([Id], [UserId], [CID], [DatDate], [TranType], [TranCID], [Amount], [DebitCredit]) VALUES (19, N'DD-2017-000004', N'DD00012', CAST(N'2017-08-10' AS Date), 1, N'DD00022', 150, N'Credit')
SET IDENTITY_INSERT [dbo].[tbl_UserAccount] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserInfo] ON 

INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (1, N'DD-2017-000001', N'DD00001', N'dd@54321', N'dd', N'Delight Discount', N'Jatrabari,Dhaka', N'Dhaka', N'robiul@gmail.com', N'0123456789', N'Mrs. Robiul', N'N/A', N'01983893929', N'1001', CAST(N'2017-07-20' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-07-21' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (10, N'DD-2017-000002', N'DD00002', N'uXVTFkRX', N'RABIUL ALAM', N'RABIUL ALAM', N'JATRABARI, DHAKA', N'MATLAB, CHANDPUR', N'r.alammm@gmail.com', N'01939987950', N'Ayesha Siddiqua', N'Daughter', N'01756816749', N'DD00001', CAST(N'2017-08-09' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-09' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (11, N'DD-2017-000003', N'DD00003', N'FAsQS4oI', N'SUVASHIS MRIDHA', N'SUVASHIS MRIDHA', N'DONIA, JATRABARI, DHAKA', N'RAJAPUR, BORISHAL', N'suvashis.mridha1@gmail.com', N'01723034862', N'KAJOL RANI', N'MOTHER', N'01973312121', N'DD00001', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (12, N'DD-2017-000004', N'DD00012', N'TJOIKiM0', N'Habibur Rahman', N'Habibur Rahman', N'Kutubkhali, Donia, Jatrabari', N'Kutubkhali, Donia, Jatrabari', N'hrraju202@gmail.com', N'01993346390', N'Rashida', N'Mother', N'01748579103', N'DD00003', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (13, N'DD-2017-000005', N'DD00013', N'e3C7YWf1', N'Habibur Rahman', N'Habibur Rahman', N'Kutubkhali, Donia, Jatrabari', N'Kutubkhali, Donia, Jatrabari', N'hrraju202@gmail.com', N'01993346390', N'Rashida', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (14, N'DD-2017-000006', N'DD00014', N'JVaiXNEQ', N'Habibur Rahman', N'Habibur Rahman', N'Kutubkhali, Donia, Jatrabari', N'Kutubkhali, Donia, Jatrabari', N'hrraju202@gmail.com', N'01993346390', N'Rashida', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (15, N'DD-2017-000007', N'DD00015', N'ZeM7qHkN', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKALI,DONIA ,JATRABARI', N'KUTUBKALI,DONIA ,JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida AKTER', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (16, N'DD-2017-000008', N'DD00016', N'a6WvDMdM', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, ,JATRABARI', N'KUTUBKHALI,DONIA, ,JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (17, N'DD-2017-000009', N'DD00017', N'nfIqmwwl', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, JATRABARI', N'KUTUBKHALI,DONIA, JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (18, N'DD-2017-000010', N'DD00018', N'M8v1xHYn', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, JATRABARI', N'KUTUBKHALI,DONIA, JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (19, N'DD-2017-000011', N'DD00019', N'8h4NqK9M', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, JATRABARI', N'KUTUBKHALI,DONIA, JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (20, N'DD-2017-000012', N'DD00020', N'fz6R0iTN', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, JATRABARI', N'KUTUBKHALI,DONIA, JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (21, N'DD-2017-000013', N'DD00021', N'lqKH34xe', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, JATRABARI', N'KUTUBKHALI,DONIA, JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
INSERT [dbo].[tbl_UserInfo] ([Id], [AutoUserID], [CID], [Password], [UseName], [FullName], [PresentAddress], [ParmanentAddress], [EmailAddress], [Mobile], [NomineeName], [Relation], [NomineeMobile], [ReferenceCid], [JoinDate], [SpotInCome], [LevelIncome], [AutoIncome], [CurrentLevel], [IsActive], [UserPic], [EntryBy], [EntryDate]) VALUES (22, N'DD-2017-000014', N'DD00022', N'N7I1KldF', N'Habibur Rahman', N'Habibur Rahman', N'KUTUBKHALI,DONIA, JATRABARI', N'KUTUBKHALI,DONIA, JATRABARI', N'hrraju202@gmail.com', N'01993346390', N'Rashida Akter', N'Mother', N'01748579103', N'DD00012', CAST(N'2017-08-10' AS Date), NULL, NULL, NULL, 1, N'Y', NULL, N'Session', CAST(N'2017-08-10' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_UserInfo] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserSpotTrack] ON 

INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (1, N'DD00001', N'1', N'10', N'N', N'DD00002', 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (2, N'DD00001', N'1', N'11', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (3, N'DD00001', N'1', N'12', N'N', N'DD00003', 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (4, N'DD00001', N'1', N'13', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (5, N'DD00001', N'1', N'14', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (6, N'DD00001', N'1', N'15', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (7, N'DD00001', N'1', N'16', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (8, N'DD00001', N'1', N'17', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (9, N'DD00001', N'1', N'18', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (10, N'DD00001', N'1', N'19', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (71, N'DD00002', N'10', N'100', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (72, N'DD00002', N'10', N'101', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (73, N'DD00002', N'10', N'102', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (74, N'DD00002', N'10', N'103', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (75, N'DD00002', N'10', N'104', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (76, N'DD00002', N'10', N'105', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (77, N'DD00002', N'10', N'106', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (78, N'DD00002', N'10', N'107', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (79, N'DD00002', N'10', N'108', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (80, N'DD00002', N'10', N'109', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (81, N'DD00003', N'12', N'120', N'N', N'DD00012', 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (82, N'DD00003', N'12', N'121', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (83, N'DD00003', N'12', N'122', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (84, N'DD00003', N'12', N'123', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (85, N'DD00003', N'12', N'124', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (86, N'DD00003', N'12', N'125', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (87, N'DD00003', N'12', N'126', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (88, N'DD00003', N'12', N'127', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (89, N'DD00003', N'12', N'128', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (90, N'DD00003', N'12', N'129', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (91, N'DD00012', N'120', N'1200', N'N', N'DD00013', 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (92, N'DD00012', N'120', N'1201', N'N', N'DD00014', 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (93, N'DD00012', N'120', N'1202', N'N', N'DD00015', 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (94, N'DD00012', N'120', N'1203', N'N', N'DD00016', 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (95, N'DD00012', N'120', N'1204', N'N', N'DD00017', 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (96, N'DD00012', N'120', N'1205', N'N', N'DD00018', 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (97, N'DD00012', N'120', N'1206', N'N', N'DD00019', 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (98, N'DD00012', N'120', N'1207', N'N', N'DD00020', 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (99, N'DD00012', N'120', N'1208', N'N', N'DD00021', 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (100, N'DD00012', N'120', N'1209', N'N', N'DD00022', 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (101, N'DD00013', N'1200', N'12000', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (102, N'DD00013', N'1200', N'12001', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (103, N'DD00013', N'1200', N'12002', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (104, N'DD00013', N'1200', N'12003', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (105, N'DD00013', N'1200', N'12004', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (106, N'DD00013', N'1200', N'12005', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (107, N'DD00013', N'1200', N'12006', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (108, N'DD00013', N'1200', N'12007', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (109, N'DD00013', N'1200', N'12008', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (110, N'DD00013', N'1200', N'12009', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (111, N'DD00014', N'1201', N'12010', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (112, N'DD00014', N'1201', N'12011', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (113, N'DD00014', N'1201', N'12012', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (114, N'DD00014', N'1201', N'12013', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (115, N'DD00014', N'1201', N'12014', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (116, N'DD00014', N'1201', N'12015', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (117, N'DD00014', N'1201', N'12016', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (118, N'DD00014', N'1201', N'12017', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (119, N'DD00014', N'1201', N'12018', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (120, N'DD00014', N'1201', N'12019', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (121, N'DD00015', N'1202', N'12020', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (122, N'DD00015', N'1202', N'12021', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (123, N'DD00015', N'1202', N'12022', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (124, N'DD00015', N'1202', N'12023', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (125, N'DD00015', N'1202', N'12024', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (126, N'DD00015', N'1202', N'12025', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (127, N'DD00015', N'1202', N'12026', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (128, N'DD00015', N'1202', N'12027', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (129, N'DD00015', N'1202', N'12028', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (130, N'DD00015', N'1202', N'12029', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (131, N'DD00016', N'1203', N'12030', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (132, N'DD00016', N'1203', N'12031', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (133, N'DD00016', N'1203', N'12032', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (134, N'DD00016', N'1203', N'12033', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (135, N'DD00016', N'1203', N'12034', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (136, N'DD00016', N'1203', N'12035', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (137, N'DD00016', N'1203', N'12036', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (138, N'DD00016', N'1203', N'12037', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (139, N'DD00016', N'1203', N'12038', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (140, N'DD00016', N'1203', N'12039', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (141, N'DD00017', N'1204', N'12040', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (142, N'DD00017', N'1204', N'12041', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (143, N'DD00017', N'1204', N'12042', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (144, N'DD00017', N'1204', N'12043', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (145, N'DD00017', N'1204', N'12044', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (146, N'DD00017', N'1204', N'12045', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (147, N'DD00017', N'1204', N'12046', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (148, N'DD00017', N'1204', N'12047', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (149, N'DD00017', N'1204', N'12048', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (150, N'DD00017', N'1204', N'12049', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (151, N'DD00018', N'1205', N'12050', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (152, N'DD00018', N'1205', N'12051', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (153, N'DD00018', N'1205', N'12052', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (154, N'DD00018', N'1205', N'12053', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (155, N'DD00018', N'1205', N'12054', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (156, N'DD00018', N'1205', N'12055', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (157, N'DD00018', N'1205', N'12056', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (158, N'DD00018', N'1205', N'12057', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (159, N'DD00018', N'1205', N'12058', N'Y', NULL, 9)
GO
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (160, N'DD00018', N'1205', N'12059', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (161, N'DD00019', N'1206', N'12060', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (162, N'DD00019', N'1206', N'12061', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (163, N'DD00019', N'1206', N'12062', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (164, N'DD00019', N'1206', N'12063', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (165, N'DD00019', N'1206', N'12064', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (166, N'DD00019', N'1206', N'12065', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (167, N'DD00019', N'1206', N'12066', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (168, N'DD00019', N'1206', N'12067', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (169, N'DD00019', N'1206', N'12068', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (170, N'DD00019', N'1206', N'12069', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (171, N'DD00020', N'1207', N'12070', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (172, N'DD00020', N'1207', N'12071', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (173, N'DD00020', N'1207', N'12072', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (174, N'DD00020', N'1207', N'12073', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (175, N'DD00020', N'1207', N'12074', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (176, N'DD00020', N'1207', N'12075', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (177, N'DD00020', N'1207', N'12076', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (178, N'DD00020', N'1207', N'12077', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (179, N'DD00020', N'1207', N'12078', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (180, N'DD00020', N'1207', N'12079', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (181, N'DD00021', N'1208', N'12080', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (182, N'DD00021', N'1208', N'12081', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (183, N'DD00021', N'1208', N'12082', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (184, N'DD00021', N'1208', N'12083', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (185, N'DD00021', N'1208', N'12084', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (186, N'DD00021', N'1208', N'12085', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (187, N'DD00021', N'1208', N'12086', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (188, N'DD00021', N'1208', N'12087', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (189, N'DD00021', N'1208', N'12088', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (190, N'DD00021', N'1208', N'12089', N'Y', NULL, 10)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (191, N'DD00022', N'1209', N'12090', N'Y', NULL, 1)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (192, N'DD00022', N'1209', N'12091', N'Y', NULL, 2)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (193, N'DD00022', N'1209', N'12092', N'Y', NULL, 3)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (194, N'DD00022', N'1209', N'12093', N'Y', NULL, 4)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (195, N'DD00022', N'1209', N'12094', N'Y', NULL, 5)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (196, N'DD00022', N'1209', N'12095', N'Y', NULL, 6)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (197, N'DD00022', N'1209', N'12096', N'Y', NULL, 7)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (198, N'DD00022', N'1209', N'12097', N'Y', NULL, 8)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (199, N'DD00022', N'1209', N'12098', N'Y', NULL, 9)
INSERT [dbo].[tbl_UserSpotTrack] ([Id], [CID], [PID], [SID], [IsAvailable], [UCID], [SlTrk]) VALUES (200, N'DD00022', N'1209', N'12099', N'Y', NULL, 10)
SET IDENTITY_INSERT [dbo].[tbl_UserSpotTrack] OFF
USE [master]
GO
ALTER DATABASE [DDDB] SET  READ_WRITE 
GO

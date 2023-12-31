USE [master]
GO
/****** Object:  Database [QLMB]    Script Date: 9/15/2022 9:48:21 PM ******/
CREATE DATABASE [QLMB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLMB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLMB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLMB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLMB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLMB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLMB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLMB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLMB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLMB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLMB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLMB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLMB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLMB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLMB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLMB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLMB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLMB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLMB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLMB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLMB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLMB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLMB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLMB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLMB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLMB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLMB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLMB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLMB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLMB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLMB] SET  MULTI_USER 
GO
ALTER DATABASE [QLMB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLMB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLMB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLMB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLMB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLMB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLMB] SET QUERY_STORE = OFF
GO
USE [QLMB]
GO
/****** Object:  Table [dbo].[ChungNhan]    Script Date: 9/15/2022 9:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChungNhan](
	[MaNV] [nvarchar](250) NOT NULL,
	[MaMB] [nvarchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 9/15/2022 9:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaCB] [char](5) NOT NULL,
	[GaDi] [nvarchar](50) NULL,
	[GaDen] [nvarchar](50) NULL,
	[DoDai] [int] NULL,
	[GioDi] [time](7) NULL,
	[GioDen] [time](7) NULL,
	[ChiPhi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayBay]    Script Date: 9/15/2022 9:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayBay](
	[MaMB] [nvarchar](250) NOT NULL,
	[Hieu] [nvarchar](250) NULL,
	[TamBay] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/15/2022 9:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](250) NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[Luong] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'747')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'777')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'767')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'727')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'567354612', N'340')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'552455318', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'552455318', N'319')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'552455318', N'747')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'552455318', N'767')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'390487451', N'340')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'390487451', N'320')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'390487451', N'319')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'274878974', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'274878974', N'767')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'355548984', N'154')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'310454876', N'154')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'747')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'777')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'767')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'340')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'142519864', N'320')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'747')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'340')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'777')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'767')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'320')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'319')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'727')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'269734834', N'154')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'242518965', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'242518965', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'141582651', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'141582651', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'141582651', N'767')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'11564812', N'737')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'11564812', N'757')
INSERT [dbo].[ChungNhan] ([MaNV], [MaMB]) VALUES (N'574489457', N'154')
GO
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN431', N'SGN', N'CAH', 3693, CAST(N'05:55:00' AS Time), CAST(N'06:55:00' AS Time), 236)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN320', N'SGN', N'DAD', 2798, CAST(N'06:00:00' AS Time), CAST(N'07:10:00' AS Time), 221)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN464', N'SGN', N'DLI', 2002, CAST(N'07:20:00' AS Time), CAST(N'08:05:00' AS Time), 225)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN216', N'SGN', N'DIN', 4170, CAST(N'10:30:00' AS Time), CAST(N'14:20:00' AS Time), 262)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN280', N'SGN', N'HPH', 11979, CAST(N'06:00:00' AS Time), CAST(N'08:00:00' AS Time), 1279)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN254', N'SGN', N'HUI', 8765, CAST(N'18:40:00' AS Time), CAST(N'20:00:00' AS Time), 781)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN338', N'SGN', N'BMV', 4081, CAST(N'15:25:00' AS Time), CAST(N'16:25:00' AS Time), 375)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN440', N'SGN', N'BMV', 4081, CAST(N'18:30:00' AS Time), CAST(N'19:30:00' AS Time), 426)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN651', N'DAD', N'SGN', 2798, CAST(N'19:30:00' AS Time), CAST(N'08:00:00' AS Time), 221)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN276', N'DAD', N'CXR', 1283, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 203)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN374', N'HAN', N'VII', 510, CAST(N'11:40:00' AS Time), CAST(N'13:25:00' AS Time), 120)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN375', N'VII', N'CXR', 752, CAST(N'14:15:00' AS Time), CAST(N'16:00:00' AS Time), 181)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN269', N'HAN', N'CXR', 1262, CAST(N'14:10:00' AS Time), CAST(N'15:50:00' AS Time), 202)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN315', N'HAN', N'DAD', 134, CAST(N'11:45:00' AS Time), CAST(N'13:00:00' AS Time), 112)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN317', N'HAN', N'UIH', 827, CAST(N'15:00:00' AS Time), CAST(N'16:15:00' AS Time), 190)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN741', N'HAN', N'PXU', 395, CAST(N'06:30:00' AS Time), CAST(N'08:30:00' AS Time), 120)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN474', N'PXU', N'PQC', 1586, CAST(N'08:40:00' AS Time), CAST(N'11:20:00' AS Time), 102)
INSERT [dbo].[ChuyenBay] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi]) VALUES (N'VN476', N'UIH', N'PQC', 485, CAST(N'09:15:00' AS Time), CAST(N'11:50:00' AS Time), 117)
GO
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'747', N'Boeing 747 - 400', 13488)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'737', N'Boeing 737 - 800', 5413)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'340', N'Airbus A340 - 300', 11392)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'757', N'Boeing 757 - 300', 6416)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'777', N'Boeing 777 - 300', 10306)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'767', N'Boeing 767 - 400ER', 10360)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'320', N'Airbus A320', 4168)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'319', N'Airbus A319', 2888)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'727', N'Boeing 727', 2406)
INSERT [dbo].[MayBay] ([MaMB], [Hieu], [TamBay]) VALUES (N'154', N'Tupolev 154', 6565)
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'242518965', N'Tran Van Son', 120433)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'141582651', N'Doan Thi Mai', 178345)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'11564812', N'Ton Van Quy', 153972)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'567354612', N'Quan Cam Ly', 256481)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'552455318', N'La Que', 101745)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'550156548', N'Nguyen Thi Cam', 205187)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'390487451', N'Le Van Luat', 212156)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'274878974', N'Mai Quoc Minh', 99890)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'254099823', N'Nguyen Thi Quynh', 24450)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'356187925', N'Nguyen Vinh Bao', 44740)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'355548984', N'Tran Thi Hoai An', 212156)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'310454876', N'Ta Van Do', 212156)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'489456522', N'Nguyen Thi Quynh Ly', 127984)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'489221823', N'Bui Quoc Chinh', 23980)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'548977562', N'Le Van Quy', 84476)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'310454877', N'Tran Van Hao', 33546)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'142519864', N'Nguyen Thi Xuan Dao', 227489)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'269734834', N'Truong Tuan Anh', 289950)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'287321212', N'Duong Van Minh', 48090)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'552455348', N'Bui Thi Dung', 92013)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'248965255', N'Tran Thi Ba', 43723)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'159542516', N'Le Van Ky', 48250)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'348121549', N'Nguyen Van Thanh', 32899)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Luong]) VALUES (N'574489457', N'Bui Van Lap', 20)
GO
USE [master]
GO
ALTER DATABASE [QLMB] SET  READ_WRITE 
GO

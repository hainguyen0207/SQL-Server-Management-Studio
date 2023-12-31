USE [master]
GO
/****** Object:  Database [ThuVien]    Script Date: 9/15/2022 9:51:07 PM ******/
CREATE DATABASE [ThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ThuVien] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThuVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [ThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ThuVien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ThuVien] SET QUERY_STORE = OFF
GO
USE [ThuVien]
GO
/****** Object:  Table [dbo].[BanDoc]    Script Date: 9/15/2022 9:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanDoc](
	[MaBD] [nvarchar](250) NOT NULL,
	[HoTenBD] [nvarchar](250) NULL,
	[NgaySinh] [date] NULL,
	[Lop] [nvarchar](250) NULL,
	[QueQuan] [nvarchar](250) NULL,
	[SoDT] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 9/15/2022 9:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaBD] [nvarchar](250) NULL,
	[MaS] [nvarchar](250) NULL,
	[NgayMuon] [date] NULL,
	[NgayHenTra] [date] NULL,
	[TraSach] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 9/15/2022 9:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaS] [nvarchar](250) NOT NULL,
	[TheLoai] [nvarchar](250) NULL,
	[TacGia] [nvarchar](250) NULL,
	[NamXB] [int] NULL,
	[NhaXB] [nvarchar](250) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170408', N'Nguyễn Thế Hừng', CAST(N'2002-09-12' AS Date), N'L05', N'Hà Giang', N'09127812912')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170409', N'Đào Cư Nam', CAST(N'2000-12-02' AS Date), N'L01', N'Hà Nội', N'0912178128')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170410', N'Trần Văn Quốc', CAST(N'2002-11-09' AS Date), N'L05', N'Nghệ An', N'0912178128')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170411', N'Nguyễn Thị Nhung', CAST(N'2002-11-24' AS Date), N'L05', N'Nghệ An', N'0912178189')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170412', N'Trần Thị Ánh Duyên', CAST(N'2002-03-26' AS Date), N'L05', N'Thanh Hóa', N'0921781278')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170413', N'Ninh Thị Thùy Trang', CAST(N'2002-04-12' AS Date), N'L05', N'Thanh Hóa', N'0912121278')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170414', N'Nguyễn Thảo Vân ', CAST(N'2002-07-30' AS Date), N'L03', N'Hà Nội', N'0912671289')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170415', N'Nguyễn Văn Hải', CAST(N'2002-07-02' AS Date), N'L05', N'Hà Nội', N'0912671234')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170416', N'Nguyễn Trường Giang', CAST(N'2001-11-02' AS Date), N'L05', N'Hà Giang', N'0322128781')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170417', N'Trần Thị Hạnh', CAST(N'2002-10-11' AS Date), N'L12', N'Hưng Yên', N'0987212356')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170418', N'Vũ Thế Phương', CAST(N'2003-11-02' AS Date), N'L11', N'Hà Nội', N'0982127890')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170419', N'Trần Minh Khải', CAST(N'2002-05-11' AS Date), N'L05', N'Tuyên Quang', N'0388992109')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170420', N'Đỗ Thị Hải', CAST(N'2002-09-02' AS Date), N'L05', N'Hà Nội', N'0912671289')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170421', N'Nguyễn Văn Hưng', CAST(N'2001-07-02' AS Date), N'L05', N'Hà Giang', N'0912092211')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170422', N'Trần Vũ Nam', CAST(N'2001-01-12' AS Date), N'L05', N'Nam Định', N'0987632451')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170423', N'Vũ Thị Ánh', CAST(N'2001-11-01' AS Date), N'L12', N'Hưng Yên', N'0982221234')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170424', N'Phạm Văn Tính', CAST(N'2002-05-08' AS Date), N'L05', N'Nam Định', N'0988221121')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170425', N'Phạm Minh Sơn ', CAST(N'2002-11-12' AS Date), N'L02', N'Thanh Hóa', N'0789127890')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170426', N'Nguyễn Văn Hùng', CAST(N'2002-01-02' AS Date), N'L07', N'Huế', N'0912781211')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170427', N'Trịnh Thị Hòa', CAST(N'2002-11-08' AS Date), N'L05', N'Thanh Hóa', N'0789902212')
INSERT [dbo].[BanDoc] ([MaBD], [HoTenBD], [NgaySinh], [Lop], [QueQuan], [SoDT]) VALUES (N'AT170428', N'Đỗ Thị Linh', CAST(N'2001-01-12' AS Date), N'L05', N'Bắc Giang', N'0786221234')
GO
SET IDENTITY_INSERT [dbo].[PhieuMuon] ON 

INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (1, N'AT170415', N'SACH1001', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (2, N'AT170415', N'SACH1002', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (3, N'AT170415', N'SACH1003', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (4, N'AT170415', N'SACH1004', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (5, N'AT170416', N'SACH1005', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (6, N'AT170415', N'SACH1006', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (7, N'AT170416', N'SACH1007', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (8, N'AT170416', N'SACH1001', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (9, N'AT170417', N'SACH1001', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (10, N'AT170417', N'SACH1003', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (11, N'AT170418', N'SACH1001', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
INSERT [dbo].[PhieuMuon] ([MaPhieu], [MaBD], [MaS], [NgayMuon], [NgayHenTra], [TraSach]) VALUES (12, N'AT170418', N'SACH1002', CAST(N'2022-09-05' AS Date), CAST(N'2022-09-10' AS Date), 0)
SET IDENTITY_INSERT [dbo].[PhieuMuon] OFF
GO
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1001', N'Lập Trình viên', N'Nguyễn Văn A', 2009, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1002', N'Lập Trình Web', N'Nguyễn Văn B', 2001, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1003', N'Lập Trình Java', N'Nguyễn Văn C', 2018, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1004', N'Lập Trình Python', N'Nguyễn Văn D', 2009, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1005', N'Lập Trình SQL', N'Nguyễn Văn E', 2010, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1006', N'Lập Trình PHP', N'Nguyễn Văn F', 2012, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1007', N'Lập Trình Android', N'Nguyễn Văn G', 2016, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1008', N'Lập Trình IOS', N'Nguyễn Văn H', 2018, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1009', N'Lập Trình C++', N'Nguyễn Văn K', 2019, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1010', N'Lập Trình C#', N'Nguyễn Văn L', 2020, N'Kim Đồng')
INSERT [dbo].[Sach] ([MaS], [TheLoai], [TacGia], [NamXB], [NhaXB]) VALUES (N'SACH1011', N'Lập Trình Game', N'Nguyễn Văn M', 2017, N'Kim Đồng')
GO
USE [master]
GO
ALTER DATABASE [ThuVien] SET  READ_WRITE 
GO

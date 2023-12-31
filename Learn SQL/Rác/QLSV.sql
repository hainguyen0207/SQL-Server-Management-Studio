USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 9/15/2022 9:50:13 PM ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLSV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = OFF
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 9/15/2022 9:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaKQ] [int] IDENTITY(1,1) NOT NULL,
	[MaSV] [nvarchar](250) NULL,
	[MaMH] [nvarchar](250) NULL,
	[Diem] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 9/15/2022 9:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](250) NOT NULL,
	[TenMH] [nvarchar](25) NULL,
	[DVHT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 9/15/2022 9:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](250) NOT NULL,
	[TenSV] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](250) NULL,
	[NgaySinh] [date] NULL,
	[Que] [nvarchar](250) NULL,
	[Lop] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KetQua] ON 

INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (1, N'AT170408', N'MH1001', 7.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (2, N'AT170409', N'MH1004', 8.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (3, N'AT170410', N'MH1003', 7.25)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (4, N'AT170411', N'MH1001', 9.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (5, N'AT170412', N'MH1002', 7)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (6, N'AT170413', N'MH1005', 8)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (7, N'AT170414', N'MH1006', 6.75)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (8, N'AT170415', N'MH1001', 9.75)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (9, N'AT170408', N'MH1002', 6)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (10, N'AT170415', N'MH1001', 7.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (11, N'AT170409', N'MH1008', 9)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (12, N'AT170410', N'MH1010', 3)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (13, N'AT170414', N'MH1009', 2.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (14, N'AT170416', N'MH1002', 3)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (15, N'AT170418', N'MH1003', 1.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (16, N'AT170419', N'MH1004', 5.75)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (17, N'AT170408', N'MH1005', 4.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (18, N'AT170426', N'MH1006', 5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (19, N'AT170428', N'MH1003', 2.5)
INSERT [dbo].[KetQua] ([MaKQ], [MaSV], [MaMH], [Diem]) VALUES (20, N'AT170427', N'MH1002', 5.5)
SET IDENTITY_INSERT [dbo].[KetQua] OFF
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1001', N'Lập Trình Căn Bản', 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1002', N'Hướng Đối Tượng Java', 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1003', N'Hướng Đối Tượng C++', 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1004', N'Kỹ Thuật Giấu Tin', 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1005', N'Hệ Quản Trị Cơ Sở Dữ Liệu', 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1006', N'Mật Mã', 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1007', N'Toán Rời Rạc', 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1008', N'Thế Chất 3', 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1009', N'CTDL', 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1010', N'Linux Và Nguồn Mở', 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [DVHT]) VALUES (N'MH1011', N'An Toàn Cơ Sở Dữ Liệu', 4)
GO
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170408', N'Nguyễn Thế Hừng', N'Nam', CAST(N'2002-09-12' AS Date), N'Hà Giang', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170409', N'Đào Cư Nam', N'Nam', CAST(N'2000-12-02' AS Date), N'Hà Nội', N'L01')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170410', N'Trần Văn Quốc', N'Nam', CAST(N'2002-11-09' AS Date), N'Nghệ An', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170411', N'Nguyễn Thị Nhung', N'Nữ', CAST(N'2002-11-24' AS Date), N'Nghệ An', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170412', N'Trần Thị Ánh Duyên', N'Nữ', CAST(N'2002-03-26' AS Date), N'Thanh Hóa', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170413', N'Ninh Thị Thùy Trang', N'Nữ', CAST(N'2002-04-12' AS Date), N'Thanh Hóa', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170414', N'Nguyễn Thảo Vân ', N'Nữ', CAST(N'2002-07-30' AS Date), N'Hà Nội', N'L03')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170415', N'Nguyễn Văn Hải', N'Nam', CAST(N'2002-07-02' AS Date), N'Hà Nội', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170416', N'Nguyễn Trường Giang', N'Nam', CAST(N'2001-11-02' AS Date), N'Hà Giang', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170417', N'Trần Thị Hạnh', N'Nữ', CAST(N'2002-10-11' AS Date), N'Hưng Yên', N'L12')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170418', N'Vũ Thế Phương', N'Nam', CAST(N'2003-11-02' AS Date), N'Hà Nội', N'L11')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170419', N'Trần Minh Khải', N'Nam', CAST(N'2002-05-11' AS Date), N'Tuyên Quang', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170420', N'Đỗ Thị Hải', N'Nữ', CAST(N'2002-09-02' AS Date), N'Hà Nội', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170421', N'Nguyễn Văn Hưng', N'Nam', CAST(N'2001-07-02' AS Date), N'Hà Giang', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170422', N'Trần Vũ Nam', N'Nam', CAST(N'2001-01-12' AS Date), N'Nam Định', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170423', N'Vũ Thị Ánh', N'Nữ', CAST(N'2001-11-01' AS Date), N'Hưng Yên', N'L12')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170424', N'Phạm Văn Tính', N'Nam', CAST(N'2002-05-08' AS Date), N'Nam Định', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170425', N'Phạm Minh Sơn ', N'Nam', CAST(N'2002-11-12' AS Date), N'Thanh Hóa', N'L02')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170426', N'Nguyễn Văn Hùng', N'Nam', CAST(N'2002-01-02' AS Date), N'Huế', N'L07')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170427', N'Trịnh Thị Hòa', N'Nữ', CAST(N'2002-11-08' AS Date), N'Thanh Hóa', N'L05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [Que], [Lop]) VALUES (N'AT170428', N'Đỗ Thị Linh', N'Nữ', CAST(N'2001-01-12' AS Date), N'Bắc Giang', N'L05')
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_MaMH] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_MaMH]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_MaSV] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_MaSV]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD CHECK  (([GioiTinh]='Nam' OR [GioiTinh]=N'Nữ'))
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO

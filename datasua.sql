USE [master]
GO
/****** Object:  Database [QUANLYRAPCHIEUPHIM]    Script Date: 12/8/2023 3:28:42 AM ******/
CREATE DATABASE [QUANLYRAPCHIEUPHIM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYRAPCHIEUPHIM', FILENAME = N'C:\Users\nguye\OneDrive\Máy tính\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYRAPCHIEUPHIM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYRAPCHIEUPHIM_log', FILENAME = N'C:\Users\nguye\OneDrive\Máy tính\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYRAPCHIEUPHIM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYRAPCHIEUPHIM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET QUERY_STORE = OFF
GO
USE [QUANLYRAPCHIEUPHIM]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](max) NOT NULL,
	[AnhPhim] [nvarchar](max) NOT NULL,
	[ThoiLuong] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[TinhTrang] [bit] NOT NULL,
	[IdLoaiPhim] [nvarchar](50) NOT NULL,
	[DienVien] [nvarchar](max) NOT NULL,
	[DaoDien] [nvarchar](max) NOT NULL,
	[NgayCongChieu] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[NamPhatHanh] [varchar](50) NULL,
	[ChatLuong] [varchar](50) NULL,
 CONSTRAINT [PK__Phim__3214EC077691A655] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__LoaiPhim__3214EC072DF95AD5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGhe]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGhe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGhe] [nvarchar](max) NOT NULL,
	[GiaGhe] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](max) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[SoluongHang] [int] NOT NULL,
	[Soluongghemoihang] [int] NOT NULL,
	[TrinhTrang] [bit] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[ghe_id] [int] IDENTITY(1,1) NOT NULL,
	[Loai_id] [int] NULL,
	[TringTrang] [bit] NOT NULL,
	[Id_phong] [int] NULL,
	[TenGhe] [varchar](50) NULL,
	[HangGhe] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ghe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayChieu] [datetime] NOT NULL,
	[Thu] [nvarchar](20) NOT NULL,
	[Phuthulc] [money] NULL,
	[IdPhim] [int] NULL,
	[IdCC] [int] NULL,
	[IdSC] [int] NULL,
	[GioBD] [time](7) NULL,
	[GioKT] [time](7) NULL,
	[IdPhong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suatchieu]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suatchieu](
	[IdSC] [int] IDENTITY(1,1) NOT NULL,
	[TenSuat] [nvarchar](20) NULL,
	[phuthusc] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTaiKhoan] [int] NULL,
	[IdPhim] [int] NULL,
	[IdGhe] [int] NULL,
	[NgayDat] [date] NULL,
	[GiaVe] [decimal](18, 2) NULL,
	[Soluong] [int] NULL,
	[TinhTrang] [int] NULL,
	[IdLC] [int] NULL,
	[IdKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaChieu]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaChieu](
	[IdCC] [int] IDENTITY(1,1) NOT NULL,
	[TenCC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__CaChieu__B77390801709C113] PRIMARY KEY CLUSTERED 
(
	[IdCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[tkdttp1]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tkdttp1] as select TenPhim,Sum(GiaVe+phuthusc+phuthulc)[Tong] from Ve inner join LichChieu on LichChieu.Id=Ve.IdLC inner join Suatchieu on Suatchieu.IdSC=LichChieu.IdSC inner join CaChieu on CaChieu.IdCC=LichChieu.IdCC
inner join Phim on Phim.Id=Ve.IdPhim inner join LoaiPhim on LoaiPhim.Id=Phim.IdLoaiPhim inner join Ghe on Ghe.ghe_id=Ve.IdGhe inner join LoaiGhe on LoaiGhe.Id=Ghe.Loai_id
inner join Phong on Phong.Id=LichChieu.IdPhong  group by 
TenPhim
GO
/****** Object:  View [dbo].[tkdt]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[tkdt] as select TenPhong,Sum(GiaVe+phuthusc+phuthulc)[Tong],NgayDat from Ve inner join LichChieu on LichChieu.Id=Ve.IdLC inner join Suatchieu on Suatchieu.IdSC=LichChieu.IdSC inner join CaChieu on CaChieu.IdCC=LichChieu.IdCC
inner join Phim on Phim.Id=Ve.IdPhim inner join LoaiPhim on LoaiPhim.Id=Phim.IdLoaiPhim inner join Ghe on Ghe.ghe_id=Ve.IdGhe inner join LoaiGhe on LoaiGhe.Id=Ghe.Loai_id
inner join Phong on Phong.Id=LichChieu.IdPhong group by 
TenPhong,NgayDat
GO
/****** Object:  View [dbo].[tkdttp]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[tkdttp] as select TenPhim,Sum(GiaVe+phuthusc+phuthulc)[Tong],NgayDat from Ve inner join LichChieu on LichChieu.Id=Ve.IdLC inner join Suatchieu on Suatchieu.IdSC=LichChieu.IdSC inner join CaChieu on CaChieu.IdCC=LichChieu.IdCC
inner join Phim on Phim.Id=Ve.IdPhim inner join LoaiPhim on LoaiPhim.Id=Phim.IdLoaiPhim inner join Ghe on Ghe.ghe_id=Ve.IdGhe inner join LoaiGhe on LoaiGhe.Id=Ghe.Loai_id
inner join Phong on Phong.Id=LichChieu.IdPhong  group by 
TenPhim,NgayDat
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](60) NULL,
	[NgayDangKy] [date] NULL,
	[TinhTrang] [bit] NULL,
	[PhanQuyen] [varchar](50) NULL,
	[id_ThongTin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Ve_LC_Phim_TK]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[Ve_LC_Phim_TK] as select Ve.Id,Ve.NgayDat,TaiKhoan.Id [Id_tk],TenPhong,TenPhim,TenGhe,TenLoai,GiaVe,phuthusc,LichChieu.Phuthulc,NgayChieu,GioBD,GioKT,TenLoaiGhe,TenSuat,Thu,TaiKhoan.Id [IDTK] from Ve inner join LichChieu on LichChieu.Id=Ve.IdLC inner join Suatchieu on Suatchieu.IdSC=LichChieu.IdSC inner join CaChieu on CaChieu.IdCC=LichChieu.IdCC
inner join Phim on Phim.Id=Ve.IdPhim inner join LoaiPhim on LoaiPhim.Id=Phim.IdLoaiPhim inner join Ghe on Ghe.ghe_id=Ve.IdGhe inner join LoaiGhe on LoaiGhe.Id=Ghe.Loai_id
inner join Phong on Phong.Id=LichChieu.IdPhong inner join TaiKhoan on TaiKhoan.Id=Ve.IdTaiKhoan
GO
/****** Object:  View [dbo].[ghe_phong]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ghe_phong] as select * from Phong where SoLuong != (select count(ghe_id) from Ghe where Id_phong = Phong.Id)
GO
/****** Object:  View [dbo].[Ve_LC_Phim]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[Ve_LC_Phim] as select Ve.Id,TenPhong,TenPhim,TenGhe,TenLoai,GiaVe,phuthusc,LichChieu.Phuthulc,NgayChieu,GioBD,GioKT,TenLoaiGhe,TenSuat,Thu from Ve inner join LichChieu on LichChieu.Id=Ve.IdLC inner join Suatchieu on Suatchieu.IdSC=LichChieu.IdSC inner join CaChieu on CaChieu.IdCC=LichChieu.IdCC
inner join Phim on Phim.Id=Ve.IdPhim inner join LoaiPhim on LoaiPhim.Id=Phim.IdLoaiPhim inner join Ghe on Ghe.ghe_id=Ve.IdGhe inner join LoaiGhe on LoaiGhe.Id=Ghe.Loai_id
inner join Phong on Phong.Id=LichChieu.IdPhong 
GO
/****** Object:  Table [dbo].[ThongTin]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTin](
	[ThongTin_id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](max) NULL,
	[DiaChi] [varchar](max) NULL,
	[GioiTinh] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ThongTin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPhim] [int] NULL,
	[IdTK] [int] NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayDang] [date] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[DanhGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[BinhLuan_Phim]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[BinhLuan_Phim] as
select TenNguoiDung,NoiDung,NgayDang,DanhGia,BinhLuan.Id[BLId],Phim.Id[IdPhim] from BinhLuan inner join TaiKhoan on TaiKhoan.Id=BinhLuan.IdTK inner join ThongTin on ThongTin.ThongTin_id=TaiKhoan.id_ThongTin inner join Phim on Phim.Id=BinhLuan.IdPhim
GO
/****** Object:  Table [dbo].[DatVe]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatVe](
	[IDDatVe] [int] IDENTITY(1,1) NOT NULL,
	[IDTK] [int] NOT NULL,
	[IDve] [nvarchar](250) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[TongTien] [money] NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nvarchar](200) NULL,
	[HoTen] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDatVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/8/2023 3:28:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[IDKM] [int] IDENTITY(1,1) NOT NULL,
	[TenKM] [nvarchar](50) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[zipcode] [nvarchar](50) NULL,
	[TienGiam] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [IdTK], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1, 1, 2, N'phim hay', CAST(N'2023-10-10' AS Date), 1, 1)
INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [IdTK], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (5, 2, 2, N'phim hay tuyệt', CAST(N'2023-01-12' AS Date), 1, 1)
INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [IdTK], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (6, 3, 2, N'phim hay', CAST(N'2023-01-12' AS Date), 1, 1)
INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [IdTK], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (7, 1, 2, N'phim mới hay', CAST(N'2023-01-12' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[CaChieu] ON 

INSERT [dbo].[CaChieu] ([IdCC], [TenCC]) VALUES (1, N'Ca Chiếu Sáng')
INSERT [dbo].[CaChieu] ([IdCC], [TenCC]) VALUES (2, N'Ca Chiếu Chiều')
INSERT [dbo].[CaChieu] ([IdCC], [TenCC]) VALUES (3, N'Ca Chiếu Tối')
SET IDENTITY_INSERT [dbo].[CaChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[DatVe] ON 

INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (1, 2, N'11,12,13', CAST(N'2023-01-12T14:20:48.970' AS DateTime), 305000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (2, 2, N'14,15', CAST(N'2023-01-12T14:23:25.373' AS DateTime), 220000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (3, 2, N'16,17,18', CAST(N'2023-01-12T15:48:19.773' AS DateTime), 355000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (4, 1, N'19,20,21,22', CAST(N'2023-01-12T16:38:12.227' AS DateTime), 340000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (5, 2, N'23,24,25', CAST(N'2023-01-12T16:39:56.093' AS DateTime), 235000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (6, 2, N'26,27,28,29,30', CAST(N'2023-01-12T16:40:26.700' AS DateTime), 525000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (7, 2, N'31,32,33', CAST(N'2023-01-12T17:16:21.637' AS DateTime), 305000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (8, 2, N'31,32,33', CAST(N'2023-01-12T17:16:21.637' AS DateTime), 305000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (9, 2, N'31,32,33', CAST(N'2023-01-12T17:16:21.637' AS DateTime), 305000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (10, 2, N'31,32,33', CAST(N'2023-01-12T17:16:21.637' AS DateTime), 305000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (11, 2, N'34,35', CAST(N'2023-01-12T17:22:19.663' AS DateTime), 90000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (12, 2, N'34,35', CAST(N'2023-01-12T17:22:19.663' AS DateTime), 90000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (13, 2, N'1,2,3,4,5', CAST(N'2023-02-05T12:21:19.120' AS DateTime), 525000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (14, 2, N'6,7,8,9,10', CAST(N'2023-02-05T12:21:54.367' AS DateTime), 525000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (15, 2, N'11,12', CAST(N'2023-02-05T12:24:28.393' AS DateTime), 170000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (16, 2, N'13,14,15,16', CAST(N'2023-02-05T12:24:54.157' AS DateTime), 440000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (17, 2, N'17,18,19,20,21,22', CAST(N'2023-02-05T12:25:22.943' AS DateTime), 810000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (18, 2, N'1,2,3,4', CAST(N'2023-02-14T00:00:00.000' AS DateTime), 600000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (19, 2, N'5,6,7,8,9', CAST(N'2023-02-14T00:00:00.000' AS DateTime), 700000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (20, 2, N'10,11,12,13,14', CAST(N'2023-02-14T00:00:00.000' AS DateTime), 800000.0000, NULL, NULL, NULL)
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (1020, 2, N'1010', CAST(N'2023-02-15T00:00:00.000' AS DateTime), 150000.0000, N'0866952668', N'vanquynh98hy@gmail.com', N'huyền')
INSERT [dbo].[DatVe] ([IDDatVe], [IDTK], [IDve], [NgayDat], [TongTien], [SDT], [Email], [HoTen]) VALUES (1021, 2, N'1011,1012', CAST(N'2023-02-15T00:00:00.000' AS DateTime), 300000.0000, N'0866952668', N'nguyenhung@gmail.com', N'quỳnh test')
SET IDENTITY_INSERT [dbo].[DatVe] OFF
GO
SET IDENTITY_INSERT [dbo].[Ghe] ON 

INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (1, 1, 0, 1, N'A1', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (2, 1, 0, 1, N'A2', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (3, 1, 0, 1, N'A3', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (4, 1, 0, 1, N'A4', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (5, 1, 1, 1, N'A5', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (6, 1, 0, 1, N'A6', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (7, 1, 0, 1, N'B1', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (8, 1, 0, 1, N'B2', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (9, 1, 0, 1, N'B3', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (10, 1, 1, 1, N'B4', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (11, 1, 0, 1, N'B5', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (12, 1, 0, 1, N'B6', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (13, 2, 0, 1, N'TC1', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (14, 2, 0, 1, N'C2', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (15, 2, 0, 1, N'C3', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (16, 2, 0, 1, N'C4', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (17, 2, 0, 1, N'C5', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (18, 2, 0, 1, N'C6', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (19, 2, 0, 1, N'D1', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (20, 2, 0, 1, N'D2', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (21, 2, 0, 1, N'D3', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (22, 2, 0, 1, N'D4', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (23, 2, 0, 1, N'D5', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (24, 2, 0, 1, N'D6', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (25, 1, 0, 1, N'E1', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (26, 1, 0, 1, N'2', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (27, 1, 0, 1, N'E3', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (28, 2, 0, 1, N'E4', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (29, 2, 0, 1, N'E5', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (30, 2, 0, 1, N'E6', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (31, 1, 0, 2, N'A1', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (32, 1, 0, 2, N'A2', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (33, 1, 0, 2, N'A3', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (34, 1, 0, 2, N'A4', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (35, 1, 1, 2, N'A5', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (36, 1, 0, 2, N'A6', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (37, 1, 0, 2, N'B1', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (38, 1, 0, 2, N'B2', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (39, 1, 0, 2, N'B3', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (40, 1, 0, 2, N'B4', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (41, 1, 0, 2, N'B5', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (42, 1, 0, 2, N'B6', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (43, 2, 0, 2, N'C1', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (44, 2, 0, 2, N'C2', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (45, 2, 0, 2, N'C3', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (46, 2, 0, 2, N'C4', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (47, 2, 0, 2, N'C5', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (48, 2, 0, 2, N'C6', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (49, 2, 0, 2, N'D1', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (50, 2, 0, 2, N'D2', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (51, 2, 0, 2, N'D3', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (52, 2, 0, 2, N'D4', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (53, 2, 0, 2, N'D5', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (54, 2, 0, 2, N'D6', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (55, 1, 0, 2, N'E1', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (56, 1, 0, 2, N'E2', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (57, 1, 0, 2, N'E3', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (58, 2, 0, 2, N'E4', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (59, 2, 0, 2, N'E5', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (60, 2, 0, 2, N'E6', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (61, 1, 0, 3, N'A1', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (62, 1, 0, 3, N'A2', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (63, 1, 0, 3, N'A3', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (64, 1, 0, 3, N'A4', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (65, 1, 1, 3, N'A5', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (66, 1, 0, 3, N'A6', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (67, 1, 0, 3, N'B1', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (68, 1, 0, 3, N'B2', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (69, 1, 0, 3, N'B3', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (70, 1, 0, 3, N'B4', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (71, 1, 0, 3, N'B5', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (72, 1, 0, 3, N'B6', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (73, 2, 0, 3, N'C1', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (74, 2, 0, 3, N'C2', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (75, 2, 0, 3, N'C3', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (76, 2, 0, 3, N'C4', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (77, 2, 0, 3, N'C5', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (78, 2, 0, 3, N'C6', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (79, 2, 0, 3, N'D1', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (80, 2, 0, 3, N'D2', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (81, 2, 0, 3, N'D3', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (82, 2, 0, 3, N'D4', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (83, 2, 0, 3, N'D5', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (84, 2, 0, 3, N'D6', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (85, 1, 0, 3, N'E1', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (86, 1, 0, 3, N'E2', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (87, 1, 0, 3, N'E3', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (88, 2, 0, 3, N'E4', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (89, 2, 0, 3, N'E5', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (90, 2, 0, 3, N'E6', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (91, 1, 0, 4, N'A1', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (92, 1, 0, 4, N'A2', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (93, 1, 0, 4, N'A3', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (94, 1, 0, 4, N'A4', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (95, 1, 1, 4, N'A5', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (96, 1, 0, 4, N'A6', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (97, 1, 0, 4, N'B1', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (98, 1, 0, 4, N'B2', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (99, 1, 0, 4, N'B3', N'2')
GO
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (100, 1, 0, 4, N'B4', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (101, 1, 0, 4, N'B5', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (102, 1, 0, 4, N'B6', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (103, 2, 0, 4, N'C1', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (104, 2, 0, 4, N'C2', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (105, 2, 0, 4, N'C3', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (106, 2, 0, 4, N'C4', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (107, 2, 0, 4, N'C5', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (108, 2, 0, 4, N'C6', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (109, 2, 0, 4, N'D1', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (110, 2, 0, 4, N'D2', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (111, 2, 0, 4, N'D3', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (112, 2, 0, 4, N'D4', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (113, 2, 0, 4, N'D5', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (114, 2, 0, 4, N'D6', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (115, 1, 0, 4, N'E1', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (116, 1, 0, 4, N'E2', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (117, 1, 0, 4, N'E3', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (118, 2, 0, 4, N'E4', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (119, 2, 0, 4, N'E5', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (120, 2, 0, 4, N'E6', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (121, 1, 0, 5, N'A1', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (122, 1, 0, 5, N'A2', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (123, 1, 0, 5, N'A3', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (124, 1, 0, 5, N'A4', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (125, 1, 1, 5, N'A5', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (126, 1, 0, 5, N'A6', N'1')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (127, 1, 0, 5, N'B1', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (128, 1, 0, 5, N'B2', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (129, 1, 0, 5, N'B3', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (130, 1, 0, 5, N'B4', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (131, 1, 0, 5, N'B5', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (132, 1, 0, 5, N'B6', N'2')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (133, 2, 0, 5, N'C1', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (134, 2, 0, 5, N'C2', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (135, 2, 0, 5, N'C3', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (136, 2, 0, 5, N'C4', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (137, 2, 0, 5, N'C5', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (138, 2, 0, 5, N'C6', N'3')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (139, 2, 0, 5, N'D1', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (140, 2, 0, 5, N'D2', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (141, 2, 0, 5, N'D3', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (142, 2, 0, 5, N'D4', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (143, 2, 0, 5, N'D5', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (144, 2, 0, 5, N'D6', N'4')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (145, 1, 0, 5, N'E1', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (146, 1, 0, 5, N'E2', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (147, 1, 0, 5, N'E3', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (148, 2, 0, 5, N'E4', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (149, 2, 0, 5, N'E5', N'5')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [TenGhe], [HangGhe]) VALUES (150, 2, 0, 5, N'E6', N'5')
SET IDENTITY_INSERT [dbo].[Ghe] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiGhe] ON 

INSERT [dbo].[LoaiGhe] ([Id], [TenLoaiGhe], [GiaGhe]) VALUES (1, N'Vip', 150000)
INSERT [dbo].[LoaiGhe] ([Id], [TenLoaiGhe], [GiaGhe]) VALUES (2, N'Thường', 100000)
SET IDENTITY_INSERT [dbo].[LoaiGhe] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhim] ON 

INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (0, N'Tâm lý')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (1, N'Hành Động')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (2, N'Siêu Anh Hùng')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (3, N'Hoạt Hình')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (4, N'Kinh Dị')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (6, N'Tình cảm')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (7, N'Hoạt hình')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (8, N'Hài hước')
SET IDENTITY_INSERT [dbo].[LoaiPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1, N' Người Hùng Tia Chớp', N'Tiachop.jpg', 121, N'Người Hùng Tia Chớp Phần 8 Mùa thứ tám của loạt phim truyền hình siêu anh hùng Mỹ The Flash , dựa trên nhân vật Barry Allen / Flash của DC Comics , được công chiếu lần đầu trên The CW vào ngày 16 tháng 11 năm 2021. Phim lấy bối cảnh ở Arrowverse , chia sẻ tính liên tục với phần còn lại loạt phim truyền hình về vũ trụ, và là phần phụ của Arrow . Phần này được sản xuất bởi Berlanti Productions , Warner Bros. Television và DC Entertainment , với Eric Wallace làm người dẫn chương trình', 1, N'1', N' Grant Gustin, Candice Patton, Danielle', N' Greg Berlanti,', CAST(N'2021-12-16T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2021', N'FULL HD VIETSUB')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (2, N'Người Dơi', N'p.jpg', 231, N'Người Dơi Trong năm thứ hai chiến đấu với tội phạm, Batman phát hiện ra tham nhũng ở thành phố Gotham , nơi kết nối với gia đình của chính anh ta trong khi đối mặt với một kẻ giết người hàng loạt được gọi là Riddler .', 1, N'1', N'Robert Pattinson, Zoë Kravitz, Colin Farrell,', N'Matt Reeves,', CAST(N'2022-01-11T00:00:00.000' AS DateTime), CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'2022', N'full hd')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (3, N'Injustice', N'juccuyu.jpg', 123, N'Injustice Trên một Trái đất thay thế, Joker lừa Superman giết Lois Lane, điều này gây ra một cơn thịnh nộ trong anh hùng. Superman quyết định nắm quyền kiểm soát Trái đất, Batman và các đồng minh của anh ta sẽ phải cố gắng ngăn chặn anh ta.', 1, N'1', N'Gillian Jacobs, Laura Bailey,', N': Matt Peters,', CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2021', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (4, N'Liên Minh Công Lý: Phiên bản của Zack Snyder', N'LienMinhCL2021.jpg', 242, N'Liên Minh Công Lý: Phiên bản của Zack Snyder Năm nghìn năm trước, Darkseid và đội quân Parademon của anh ta cố gắng chinh phục Trái đất bằng cách sử dụng ba Hộp Mẹ . Họ bị đánh bại bởi một liên minh của Các vị thần già , Amazons , người Atlantis , con người và Green Lantern , để lại những Hộp Mẹ, được giấu riêng biệt. Hiện tại, cái chết của Superman [b] đã kích hoạt lại Boxes, thu hút Steppenwolf , trung úy thất sủng của Darkseid. Steppenwolf đặt mục tiêu giành lại sự ưu ái của Darkseid bằng cách thu thập các hộp để tạo thành "The Unity", biến Trái đất thành một bản sao của Apokolips, quê hương của họ.', 1, N'1', N'Jared Leto, Henry Cavill, Ray Porter, Sergi', N'Zack Snyder,', CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'2021', N'HD ')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (5, N'Suicide Squad: Biệt Đội Cảm Tử 2', N'bietDoiCamTu.jpg', 132, N'Suicide Squad: Biệt Đội Cảm Tử 2 Theo lệnh của sĩ quan tình báo Amanda Waller , mười ba tù nhân từ trại giam Belle Reve — cựu bác sĩ tâm thần Harley Quinn ; Nanaue lai ăn thịt người ; Thuyền trưởng tên trộm người Úc Boomerang ; sát thủ Bloodsport ; Nhà tạo hòa bình cực đoan bạo lực ; metahumans TDK . và Polka-Dot Man ; hacker máy tính Savant ; lính đánh thuê Blackguard ; cựu vận động viên Olympic Javelin ; chiến binh ngoài hành tinh Mongal ; tên cướp điều khiển chuột Ratcher 2 ; và Chồn hình người ăn thịt đồng loại—Đ', 1, N'2', N'John Cena, Margot Robbie, Pete Davidson,', N'James Gunn,', CAST(N'2021-11-30T00:00:00.000' AS DateTime), CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'2021', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (6, N' Huyền Thoại Rồng Đen: Scorpion Báo Thù', N'huyyenThoaiRD.jpg', 123, N'Huyền Thoại Rồng Đen: Scorpion Báo Thù Tại Nhật Bản , đại kiện tướng Shirai Ryu Hanzo Hasashi và cậu con trai nhỏ Satoshi bị phục kích trên đường về nhà bởi một vài ninja từ gia tộc đối thủ Lin Kuei. Hasashi giết tất cả bọn họ sau khi phát hiện ra Lin Kuei đã tàn sát phần còn lại của Shirai Ryu, bao gồm cả vợ Harumi. Sub-Zero của Lin Kuei xuất hiện, sử dụng khả năng đóng băng của mình để kiềm chế Hanzo trong băng và sau đó giết chết Satoshi. Sau đó, anh ta đâm Hanzo qua cổ bằng một cột băng, giết chết anh ta. Sâu bên dưới sâu thẳm của Netherrealm, Hasashi được hồi sinh một cách bí ẩn và gặp gỡ thầy phù thủy Quan C', 0, N'4', N'ennifer Carpenter, Joel Mchale, Ike Amadi, Steve Blum, Artt Butler, Darin De Paul, Robin Atkin Downes, Grey Griffin, Kevin Michael Richardson, Jordan Rodrigues, Patrick Seitz, Fred Tatasciore, Dave B. Mitchell,', N'dc', CAST(N'2021-12-22T00:00:00.000' AS DateTime), CAST(N'2021-12-14T00:00:00.000' AS DateTime), N'2020', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (7, N' Batman: Kỵ Sĩ Bóng Đêm', N'kisibongdem.jpg', 152, N'Batman: Kỵ Sĩ Bóng Đêm Kỵ sỹ bóng đêm (The Dark Knight) là một bộ phim siêu anh hùng do Christopher Nolan làm đạo diễn và đồng kịch bản năm 2008. Dựa trên nhân vật Batman của hãng truyện tranh DC Comics, bộ phim này là một phần của loạt 3 phim Batman do Christopher Nolan đạo diễn và là phần tiếp theo của bộ phim Huyền thoại Người Dơi (Batman Begins) sản xuất năm 2005. Christian Bale tiếp tục thủ vai chính Batman trong phim. Bộ phim tập trung vào cuộc chiến giữa Batman và kẻ thù mới: Joker (Heath Ledger), mối quan hệ của anh với c', 1, N'4', N'Christian Bale, Heath Ledger,', N'Christopher Nolan,', CAST(N'2021-12-02T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2020', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (8, N' Người Dơi Xuất Hiện', N'nguoiGioiXh.jpg', 123, N'Người Dơi Xuất Hiện Batman Begins là bộ phim siêu anh hùng dựa trên nhân vật giả tưởng trong truyện tranh của DC Comics là Batman, được đạo diễn bởi Christopher Nolan. Với Christian Bale trong vai Batman cùng với dàn diễn viên Michael Caine, Liam Neeson, Katie Holmes, Gary Oldman, và Morgan Freeman. Phim reboot lại series phim về Batman, kể câu chuyện về nguồn gốc nhân vật, từ nỗi sợ hãi ban đầ', 0, N'4', N'Michael Caine, Christian Bale,', N'Christopher Nolan,', CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'2005', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (9, N'LEGO DC Liên Minh Công Lý: Đại Chiến Thiên Hà', N'lego.jpg', 123, N'LEGO DC Liên Minh Công Lý: Đại Chiến Thiên Hà Justice League: Brainiac Machine, Lego DC Comics Super Heroes: Justice League Cosmic Clash 2016 Liệu Justice League có thể chống lại cỗ máy làm cong thời gian? Cho đến nay, Justice League đã chiến thắng mọi kẻ thù dám tuyên chiến với chúng. Lần này, họ phải đối mặt với Brainiac, một cỗ máy bất khả xâm phạm cực kỳ thông minh đang làm hại tất cả sự sống trên thế giới. Brainiac đã gửi Superman, Wonder Woman và Green Lantern đến những nơi khác nhau trong những thời điểm khác nhau, còn Batman và The Flash đang cố gắng thiết lập lại Justice League và chống lại cỗ má', 1, N'3', N'Troy Baker, Nolan North, Grey Griffin,', N'Rick Morales,', CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(N'2021-12-30T00:00:00.000' AS DateTime), N'2016', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (10, N' Người Đàn Ông Thép', N'danOngThe.jpg', 124, N'Người Đàn Ông Thép Man of Steel, Man Of Steel, Super Man of Steel (Siêu Nhân) - Man of Steel xoay quanh câu chuyện về một chàng trai trẻ tên là Clark Kent, anh ta là một người ngoài hành tinh được đưa đến Trái Đất và được một cặp vợ chồng bắt lấy. Jonathan - Martha nuôi dưỡng. Khi Trái đất bị tấn công bởi các thế lực siêu nhiên, Clark Kent trở thành anh hùng Superman bảo vệ người dân.', 1, N'3', N'Henry Cavill, Amy Adams, Michael Shannon,', N': Zack Snyder,', CAST(N'2021-12-05T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2021', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (11, N'Anh Hung DC', N'Tiadchop.jpg', 123, N'12321', 0, N'2', N'sddddddđ', N'213', CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2021-12-27T00:00:00.000' AS DateTime), N'2021', N'3')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (12, N'Mắt Biếc', N'Hinh3.jpg', 222, N'Phim Mắt Biếc được chuyển thể từ tiểu thuyết của nhà văn Nguyễn Nhật Ánh.Mắt Biếc xoay quanh mối tình đơn phương của Ngạn với Hà Lan, cô bạn gái có cặp mắt hút hồn nhưng cá tính bướng bỉnh. Một chuyện tình nhiều cung bậc, từ ngộ nghĩnh trẻ con, rồi tình yêu thuở học trò trong sáng, trải qua bao biến cố, trở thành một cuộc “đuổi hình bắt bóng” buồn da diết nhưng không nguôi hi vọng.Câu chuyện càng trở nên éo le hơn khi Trà Long – con gái của Hà Lan, lớn lên lại nhen nhóm một tình yêu như thế với Ngạn…Mắc Biếc: Một sự kết hợp tinh tế vẻ đẹp thuần khiết của văn chương Nguyễn Nhật Ánh, với những khung hình mãn nhãn đặc trưng của Victor Vũ, đã từng khiến khán giả choáng ngợp từ “Thiên mệnh anh hùng” tới “Tôi thấy hoa vàng trên cỏ xanh”.', 1, N'1', N'Victor Vũ', N'Trần Nghĩa - Trúc Anh', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-28T00:00:00.000' AS DateTime), N'2023', N'1080')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (13, N'Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử', N'Hinh21.jpg', 125, N'Scott Lang và Hope Van Dyne trở lại tiếp tục cuộc phiêu lưu của họ với vai trò Người Kiến và Chiến binh Ong. Cùng với cha mẹ của Hope, họ sẽ có chuyến khám phá Lượng Tử Giới, gặp gỡ những sinh vật mới lạ và bắt đầu cuộc hành trình vào thế giới lượng tử.', 0, N'2,3,4', N'Peyton Reed', N'Paul Rudd, Evangeline Lilly, Jonathan Majors', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'1080')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (14, N'Nhà Bà nữ', N'Hinh22.jpg', 102, N'Câu chuyện xoay quanh gia đình bà Nữ gồm ba thế hệ sống cùng nhau trong một ngôi nhà. Bà Nữ một tay cáng đáng mọi sự, nổi tiếng với quán bánh canh cua và cũng khét tiếng với việc kiểm soát cuộc sống của tất cả mọi người, từ con gái đến con rể. Mọi chuyện diễn ra bình thường cho đến khi cô con gái út si mê anh chàng điển trai xuất thân từ một gia đình giàu có. Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính "Ai cũng có lỗi, nhưng ai cũng nghĩ mình là nạn nhân..." chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm', 0, N'1,2,6', N'trấn thành', N'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (15, N'Bào Thai Quỷ Dị', N'Hinh23.jpg', 90, N'Một phụ nữ mang thai nằm trên giường bắt đầu tự hỏi liệu ngôi nhà của mình có bị ma ám hay tất cả chỉ là do cô ấy nghĩ ra.', 1, N'4', N'Lori Evans Taylor', N'Melissa Barrera, Guy Burnet, Edie Inksetter', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (16, N'Chị Chị Em Em 2', N'Hinh24.jpg', 102, N'Dựa trên giai thoại mỹ nhân Ba Trà & Tư Nhị, Chị Chị Em Em 2 xoay quanh giai đoạn 2 đệ nhất mỹ nhân Ba Trà và Tư Nhị gặp gỡ nhau, từ đó tái hiện cuộc sống hoa lệ nhiều góc khu', 0, N'1,2,6', N'trấn thành', N'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (17, N'Nhà Bà nữ', N'Hinh22.jpg', 102, N'Câu chuyện xoay quanh gia đình bà Nữ gồm ba thế hệ sống cùng nhau trong một ngôi nhà. Bà Nữ một tay cáng đáng mọi sự, nổi tiếng với quán bánh canh cua và cũng khét tiếng với việc kiểm soát cuộc sống của tất cả mọi người, từ con gái đến con rể. Mọi chuyện diễn ra bình thường cho đến khi cô con gái út si mê anh chàng điển trai xuất thân từ một gia đình giàu có. Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính "Ai cũng có lỗi, nhưng ai cũng nghĩ mình là nạn nhân..." chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm', 0, N'1,2,6', N'trấn thành', N'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (18, N'Nhà Bà nữ', N'Hinh22.jpg', 102, N'Câu chuyện xoay quanh gia đình bà Nữ gồm ba thế hệ sống cùng nhau trong một ngôi nhà. Bà Nữ một tay cáng đáng mọi sự, nổi tiếng với quán bánh canh cua và cũng khét tiếng với việc kiểm soát cuộc sống của tất cả mọi người, từ con gái đến con rể. Mọi chuyện diễn ra bình thường cho đến khi cô con gái út si mê anh chàng điển trai xuất thân từ một gia đình giàu có. Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính "Ai cũng có lỗi, nhưng ai cũng nghĩ mình là nạn nhân..." chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm', 0, N'1,2,6', N'trấn thành', N'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (19, N'Nhà Bà nữ', N'Hinh22.jpg', 102, N'Câu chuyện xoay quanh gia đình bà Nữ gồm ba thế hệ sống cùng nhau trong một ngôi nhà. Bà Nữ một tay cáng đáng mọi sự, nổi tiếng với quán bánh canh cua và cũng khét tiếng với việc kiểm soát cuộc sống của tất cả mọi người, từ con gái đến con rể. Mọi chuyện diễn ra bình thường cho đến khi cô con gái út si mê anh chàng điển trai xuất thân từ một gia đình giàu có. Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính "Ai cũng có lỗi, nhưng ai cũng nghĩ mình là nạn nhân..." chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm', 0, N'1,2,6', N'trấn thành', N'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (20, N'Nhà Bà nữ', N'Hinh22.jpg', 102, N'Câu chuyện xoay quanh gia đình bà Nữ gồm ba thế hệ sống cùng nhau trong một ngôi nhà. Bà Nữ một tay cáng đáng mọi sự, nổi tiếng với quán bánh canh cua và cũng khét tiếng với việc kiểm soát cuộc sống của tất cả mọi người, từ con gái đến con rể. Mọi chuyện diễn ra bình thường cho đến khi cô con gái út si mê anh chàng điển trai xuất thân từ một gia đình giàu có. Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính "Ai cũng có lỗi, nhưng ai cũng nghĩ mình là nạn nhân..." chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm', 0, N'1,2,6', N'trấn thành', N'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-29T00:00:00.000' AS DateTime), N'2023', N'2D,3D')
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([Id], [TenPhong], [SoLuong], [SoluongHang], [Soluongghemoihang], [TrinhTrang], [MoTa]) VALUES (1, N'Phòng 1', 30, 5, 6, 1, N'phòng chiếu phim số 1')
INSERT [dbo].[Phong] ([Id], [TenPhong], [SoLuong], [SoluongHang], [Soluongghemoihang], [TrinhTrang], [MoTa]) VALUES (2, N'Phòng 2', 30, 5, 6, 1, N'Phòng chiếu phim số 2')
INSERT [dbo].[Phong] ([Id], [TenPhong], [SoLuong], [SoluongHang], [Soluongghemoihang], [TrinhTrang], [MoTa]) VALUES (3, N'phòng 3', 30, 5, 6, 1, N'phòng chiếu phim số 3')
INSERT [dbo].[Phong] ([Id], [TenPhong], [SoLuong], [SoluongHang], [Soluongghemoihang], [TrinhTrang], [MoTa]) VALUES (4, N'phòng 4', 30, 5, 6, 0, N'phòng chiếu phim số 4')
INSERT [dbo].[Phong] ([Id], [TenPhong], [SoLuong], [SoluongHang], [Soluongghemoihang], [TrinhTrang], [MoTa]) VALUES (5, N'phòng 5', 30, 5, 6, 0, N'phòng chiếu phim số 5')
INSERT [dbo].[Phong] ([Id], [TenPhong], [SoLuong], [SoluongHang], [Soluongghemoihang], [TrinhTrang], [MoTa]) VALUES (8, N'phòng 6', 70, 10, 7, 1, N'chiếu phim 4D')
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[Suatchieu] ON 

INSERT [dbo].[Suatchieu] ([IdSC], [TenSuat], [phuthusc]) VALUES (1, N'Suất Chiếu Sớm', 50000.0000)
INSERT [dbo].[Suatchieu] ([IdSC], [TenSuat], [phuthusc]) VALUES (2, N'Suất Chiếu Thường', 0.0000)
SET IDENTITY_INSERT [dbo].[Suatchieu] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (1, N'admin@gmail.com', N'12345678', CAST(N'2020-09-12' AS Date), 1, N'1', 1)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (2, N'1234@gmail.com', N'1234', CAST(N'2020-09-12' AS Date), 0, N'MANAGA', 2)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (3, N'thungan@gmail.com', N'1234', CAST(N'2022-09-09' AS Date), 1, N'2', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (4, N'nvlichchieu@gmail.com', N'1234', CAST(N'2022-05-08' AS Date), 1, N'3', 4)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (5, N'nvphongchieu@gmail.com', N'1234', CAST(N'2022-01-09' AS Date), 0, N'4', 5)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (6, N'quocbao27@gmail.com', N'123', CAST(N'2023-02-14' AS Date), 1, N'1', 8)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (7, N'quocbao27@gmail.com', N'1234', CAST(N'2023-02-16' AS Date), 1, N'5', 12)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (8, N'quocbao27@gmail.com', N'1234', CAST(N'2023-02-16' AS Date), 1, N'5', 13)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (9, N'huhuhu@gmail.com', N'1234', CAST(N'2023-02-16' AS Date), 1, N'5', 14)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (10, N'huhuhu@gmail.com', N'12345', CAST(N'2023-02-16' AS Date), 1, N'5', 15)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (11, N'quanghuy123@gmail.com', N'12345', CAST(N'2023-02-16' AS Date), 1, N'5', 16)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (12, N'quanghuy123@gmail.com', N'12345', CAST(N'2023-02-16' AS Date), 1, N'5', 17)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTin] ON 

INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (1, N'Nguyễn Quốc Bảo', N'Nghe An', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (2, N'Nguyễn Văn B', N'Nghe An', N'Nam', CAST(N'2020-12-11T00:00:00.000' AS DateTime), N'1234@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (3, N'Nguyyễn Văn A', N'Nghe An', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (4, N'Nguyyễn Văn A', N'Nghe An', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (5, N'Nguyyễn Văn A', N'Nghe An', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (6, N'Nguyyễn Văn A', N'Nghe An', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (7, N'Nguyyễn Văn A', N'Nghe An', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (8, N'bảo', N'TP Vinh', N'Nam', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'quocbao27@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (12, N'bảo', N'TP Vinh', NULL, CAST(N'2023-02-14T00:00:00.000' AS DateTime), N'quocbao27@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (13, N'bảo', N'TP Vinh', NULL, CAST(N'2023-02-14T00:00:00.000' AS DateTime), N'quocbao27@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (14, N'bảo', N'TP Vinh', NULL, CAST(N'2023-02-14T00:00:00.000' AS DateTime), N'quocbao27@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (15, N'huy', N'TP Vinh', NULL, CAST(N'2023-02-14T00:00:00.000' AS DateTime), N'huhuhu@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (16, N'huy', N'TP Vinh', NULL, CAST(N'2023-02-14T00:00:00.000' AS DateTime), N'huhuhu@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (17, N'huy', N'TP Vinh', NULL, CAST(N'2023-01-31T00:00:00.000' AS DateTime), N'quanghuy123@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (18, N'huy', N'TP Vinh', NULL, CAST(N'2023-01-31T00:00:00.000' AS DateTime), N'quanghuy123@gmail.com')
SET IDENTITY_INSERT [dbo].[ThongTin] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_PBL] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_PBL]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_TKBL] FOREIGN KEY([IdTK])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_TKBL]
GO
ALTER TABLE [dbo].[DatVe]  WITH CHECK ADD  CONSTRAINT [FK_DV_TK] FOREIGN KEY([IDTK])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[DatVe] CHECK CONSTRAINT [FK_DV_TK]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LoaiGhe] FOREIGN KEY([Loai_id])
REFERENCES [dbo].[LoaiGhe] ([Id])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_LoaiGhe]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong] FOREIGN KEY([Id_phong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LC_CC] FOREIGN KEY([IdCC])
REFERENCES [dbo].[CaChieu] ([IdCC])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LC_CC]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_P_V] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_P_V]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LC] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_Phim_LC]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_SC_LC] FOREIGN KEY([IdSC])
REFERENCES [dbo].[Suatchieu] ([IdSC])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_SC_LC]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tt] FOREIGN KEY([id_ThongTin])
REFERENCES [dbo].[ThongTin] ([ThongTin_id])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_tt]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_LC_V] FOREIGN KEY([IdLC])
REFERENCES [dbo].[LichChieu] ([Id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_LC_V]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_V_Gk] FOREIGN KEY([IdGhe])
REFERENCES [dbo].[Ghe] ([ghe_id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_V_Gk]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_V_KM] FOREIGN KEY([IdKM])
REFERENCES [dbo].[KhuyenMai] ([IDKM])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_V_KM]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_V_P] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_V_P]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_V_TK] FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_V_TK]
GO
USE [master]
GO
ALTER DATABASE [QUANLYRAPCHIEUPHIM] SET  READ_WRITE 
GO

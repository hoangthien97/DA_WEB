USE [NoodStore_2]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](31) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC,
	[PassAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Soluong] [int] NULL,
	[GiaSP] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHANLOAI]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHANLOAI](
	[MaKieu] [varchar](20) NOT NULL,
	[TenKieu] [nvarchar](50) NOT NULL,
	[MaPL] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETPHANLOAI_1] PRIMARY KEY CLUSTERED 
(
	[MaKieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETPHANLOAITHIETBI]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHANLOAITHIETBI](
	[MaLSP] [varchar](10) NOT NULL,
	[LoaiTB] [nvarchar](50) NOT NULL,
	[MaPLTB] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETPHANLOAITHIETBI_1] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [smalldatetime] NULL,
	[Ngaygiao] [smalldatetime] NULL,
	[Hinhthucthanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Tinhtrangthanhtoan] [bit] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](30) NOT NULL,
	[Ten] [nvarchar](7) NULL,
	[Ngaysinh] [smalldatetime] NULL,
	[DienthoaiKH] [varchar](15) NOT NULL,
	[Email] [nvarchar](30) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[Taikhoan] [nvarchar](15) NULL,
	[MK] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](20) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](15) NULL,
 CONSTRAINT [PK_NHASANXUAT] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHOMTT]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMTT](
	[GroupNewsId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_NHOMTT] PRIMARY KEY CLUSTERED 
(
	[GroupNewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANLOAI]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOAI](
	[MaPL] [int] IDENTITY(1,1) NOT NULL,
	[TenPL] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY CLUSTERED 
(
	[MaPL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANLOAITHIETBI]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOAITHIETBI](
	[MaPLTB] [int] IDENTITY(1,1) NOT NULL,
	[TenPLTB] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_PHANLOAITHIETBI] PRIMARY KEY CLUSTERED 
(
	[MaPLTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[MotaSP] [nvarchar](max) NULL,
	[BaoHanh] [nvarchar](30) NULL,
	[AnhSP] [varchar](50) NULL,
	[GiaSP] [decimal](18, 0) NULL,
	[NgayNhapSP] [smalldatetime] NULL,
	[Soluongton] [int] NULL,
	[MaNSX] [int] NOT NULL,
	[MaLSP] [varchar](10) NOT NULL,
	[MaKieu] [varchar](20) NOT NULL,
	[MauSP] [nvarchar](20) NULL,
	[Tinhtrang] [nvarchar](30) NULL,
 CONSTRAINT [PK_SANPHAM_1] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THANHTOAN]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTOAN](
	[MaDDH] [int] NOT NULL,
	[MaKH] [int] NULL,
	[THANHTIEN] [decimal](18, 0) NULL,
 CONSTRAINT [PK_THANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 04/05/2018 3:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Content] [ntext] NULL,
	[Detail] [ntext] NOT NULL,
	[Ngaydang] [smalldatetime] NULL,
	[GroupNewsId] [int] NOT NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (1, 8, 1, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (2, 4, 1, CAST(1950000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (3, 8, 1, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (4, 8, 1, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (5, 8, 1, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (5, 33, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDDH], [MaSP], [Soluong], [GiaSP]) VALUES (6, 8, 3, CAST(999 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'BP-001', N'Bàn Phím ', 7)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'CASE-001', N'CASE', 7)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'CH-001', N'Chuột 01', 7)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'CPU-A', N'AMD RYZEN', 1)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'CPU-I6', N'INTEL SKYLAKE(6)-LGA1151', 1)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'CPU-I7', N'INTEL KABYLAKE(7)-LGA1151', 1)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'CPU-I8', N'INTEL COFFELAKE(8)-LGA1151V2', 1)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'MB-IB360', N'INTEL B360 CAFFELAKE LGA1151', 2)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'MB-IH370', N'INTEL H370 CAFFELAKE LGA1151', 2)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'MB-IX299', N'INTEL X299 LGA 2066', 2)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'MB-IZ370', N'INTEL Z370 CAFFELAKE LGA1151', 2)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'MH-001', N'Màn Hình ', 7)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'PSU-500', N'NGUỒN CÔNG SUẤT 500W', 5)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'PSU-600', N'NGUỒN CÔNG SUẤT 600W', 5)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'PSU-700', N'NGUỒN CÔNG SUẤT 700W', 5)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'R-16', N'RAM 16GB', 4)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'R-32', N'RAM 32GB', 4)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'R-4', N'RAM 4GB', 4)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'R-8', N'RAM 8GB', 4)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'SSD-120-128', N' 120GB-128GB', 6)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'SSD-240-250', N'240GB-250GB', 6)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'SSD-480-512', N'480GB-512GB', 6)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'TN-001', N'TAI NGHE', 7)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'VGA-1050', N'CARD MÀN HÌNH 1050', 3)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'VGA-1060-3', N'CARD MÀN HÌNH 1060 3G', 3)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'VGA-1060-6', N'CARD MÀN HÌNH 1060 6G', 3)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'VGA-1070', N'CARD MÀN HÌNH 1070', 3)
INSERT [dbo].[CHITIETPHANLOAI] ([MaKieu], [TenKieu], [MaPL]) VALUES (N'VGA-1080', N'CARD MÀN HÌNH 1080', 3)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'BP', N'BÀN PHÍM', 1)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'CASE', N'CASE - THÙNG MÁY', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'CH', N'CHUỘT', 1)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'COOLING', N'COOLING - TẢN NHIỆT', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'CPU', N'CPU-BỘ VI SỬ LÍ', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'HDD', N'HDD - Ổ CỨNG PC', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'MB', N'MAINBOARD - BO MẠCH CHỦ', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'MH', N'MÀN HÌNH', 1)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'MP', N'MOUSE PAD', 1)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'PSU', N'PSU - NGUỒN MÁY TÍNH', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'RAM', N'RAM - BỘ NHỚ TRONG', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'ROUTER', N'ROUTER -THIẾT BỊ MẠNG', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'SSD', N'SSD - Ổ CỨNG THỂ RẮN', 2)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'TN', N'TAI NGHE', 1)
INSERT [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP], [LoaiTB], [MaPLTB]) VALUES (N'VGA', N'VGA - CARD MÀN HÌNH', 2)
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDDH], [Ngaydat], [Ngaygiao], [Hinhthucthanhtoan], [Tinhtranggiaohang], [Tinhtrangthanhtoan], [MaKH]) VALUES (1, CAST(N'2018-05-04 02:32:00' AS SmallDateTime), CAST(N'2018-05-26 00:00:00' AS SmallDateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MaDDH], [Ngaydat], [Ngaygiao], [Hinhthucthanhtoan], [Tinhtranggiaohang], [Tinhtrangthanhtoan], [MaKH]) VALUES (2, CAST(N'2018-05-04 10:27:00' AS SmallDateTime), CAST(N'2018-05-05 00:00:00' AS SmallDateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MaDDH], [Ngaydat], [Ngaygiao], [Hinhthucthanhtoan], [Tinhtranggiaohang], [Tinhtrangthanhtoan], [MaKH]) VALUES (3, CAST(N'2018-05-04 13:43:00' AS SmallDateTime), CAST(N'2018-05-09 00:00:00' AS SmallDateTime), 0, 0, 0, 6)
INSERT [dbo].[DONDATHANG] ([MaDDH], [Ngaydat], [Ngaygiao], [Hinhthucthanhtoan], [Tinhtranggiaohang], [Tinhtrangthanhtoan], [MaKH]) VALUES (4, CAST(N'2018-05-04 13:45:00' AS SmallDateTime), CAST(N'2018-05-11 00:00:00' AS SmallDateTime), 0, 0, 0, 6)
INSERT [dbo].[DONDATHANG] ([MaDDH], [Ngaydat], [Ngaygiao], [Hinhthucthanhtoan], [Tinhtranggiaohang], [Tinhtrangthanhtoan], [MaKH]) VALUES (5, CAST(N'2018-05-04 13:59:00' AS SmallDateTime), CAST(N'2018-05-16 00:00:00' AS SmallDateTime), 0, 0, 0, 6)
INSERT [dbo].[DONDATHANG] ([MaDDH], [Ngaydat], [Ngaygiao], [Hinhthucthanhtoan], [Tinhtranggiaohang], [Tinhtrangthanhtoan], [MaKH]) VALUES (6, CAST(N'2018-05-04 14:10:00' AS SmallDateTime), CAST(N'2018-05-25 00:00:00' AS SmallDateTime), 0, 0, 0, 6)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [Ngaysinh], [DienthoaiKH], [Email], [DiachiKH], [Taikhoan], [MK]) VALUES (1, N'Đinh Công ', N'Hân', CAST(N'1997-09-22 00:00:00' AS SmallDateTime), N'0931104083', N'dinhconghan@gmail.com', NULL, N'dinhconghan', N'123456')
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [Ngaysinh], [DienthoaiKH], [Email], [DiachiKH], [Taikhoan], [MK]) VALUES (4, N'Trần Hồng ', N'Hải', CAST(N'1997-09-10 00:00:00' AS SmallDateTime), N'012909002202', N'tranhonghai', NULL, N'tranhonghai', N'12345')
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [Ngaysinh], [DienthoaiKH], [Email], [DiachiKH], [Taikhoan], [MK]) VALUES (5, N'Vũ Hoàng ', N'Thiên', CAST(N'1997-01-10 00:00:00' AS SmallDateTime), N'0930028393', N'vuhoangthien', NULL, N'vuhoangthien', N'123456')
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [Ngaysinh], [DienthoaiKH], [Email], [DiachiKH], [Taikhoan], [MK]) VALUES (6, N'abc', N'abcd', CAST(N'2018-05-10 00:00:00' AS SmallDateTime), N'0123456789', N'abc@mail', NULL, N'abc123', N'123456')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (1, N'RAZER', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (2, N'CORSAIR', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (3, N'ASUS', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (4, N'MSI', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (5, N'ASROCK', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (6, N'GIGABYTE', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (7, N'VIEWSONIC', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (8, N'BENQ', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (9, N'SAM SUNG', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (10, N'DELL', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (11, N'COOLER MASTER', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (12, N'LEOPOLD', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (13, N'DUCKY', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (14, N'INTEL', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (15, N'RYZEN', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (16, N'PALIT', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (17, N'G.SKILL', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (18, N'ADATA', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (19, N'KLEVV', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (20, N'PLEXTOR', NULL, NULL)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai]) VALUES (21, N'LG', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
SET IDENTITY_INSERT [dbo].[PHANLOAI] ON 

INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (1, N'LOẠI CPU')
INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (2, N'LOẠI MANBOARD')
INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (3, N'LOẠI VGA')
INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (4, N'LOẠI RAM')
INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (5, N'LOẠI NGUỒN MÁY TÍNH')
INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (6, N'LOẠI Ổ CỨNG SSD')
INSERT [dbo].[PHANLOAI] ([MaPL], [TenPL]) VALUES (7, N'KHÁC')
SET IDENTITY_INSERT [dbo].[PHANLOAI] OFF
SET IDENTITY_INSERT [dbo].[PHANLOAITHIETBI] ON 

INSERT [dbo].[PHANLOAITHIETBI] ([MaPLTB], [TenPLTB]) VALUES (1, N'THIẾT BỊ NGOẠI VI')
INSERT [dbo].[PHANLOAITHIETBI] ([MaPLTB], [TenPLTB]) VALUES (2, N'LINH KIỆN ĐIỆN TỬ')
INSERT [dbo].[PHANLOAITHIETBI] ([MaPLTB], [TenPLTB]) VALUES (3, N'KHÁC')
SET IDENTITY_INSERT [dbo].[PHANLOAITHIETBI] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (1, N'Corsair K95 RGB Platinum', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(4990000 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 2, N'BP', N'BP-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (2, N'GIGABYTE AORUS AC300W ATX Mid-tower PC Case', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 6, N'CASE', N'CASE-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (3, N'Razer DeathAdder Elite', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 1, N'CH', N'CH-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (4, N'Corsair Glaive RGB', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 2, N'CH', N'CH-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (5, N'Intel Core i7 8700k / 12M / 3.7GHz / 6 nhân 12 luồng', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 14, N'CPU', N'CPU-I8', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (6, N'Intel Core i5 8600K / 9M / 3.6GHz / 6 nhân 6 luồng', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 14, N'CPU', N'CPU-I7', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (7, N'Intel Core i3 8350k / 8M / 4.0GHz / 4 nhân 4 luồng', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 14, N'CPU', N'CPU-I6', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (8, N'AMD Threadripper™ 1950X Socket TR4', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 15, N'CPU', N'CPU-A', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (9, N'AMD Ryzen 7 1800X / 8 nhân 16 luồng / 3.6GHz / 20M / SK AM4', N'1000 chữ', N'12 tháng', N'gearvn-logitech-g-pro-01.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 15, N'CPU', N'CPU-A', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (10, N'AMD Ryzen 5 2400G 3.6 GHz tích hợp VGA Radeon Vega 11/6MB /4 nhân 8 luồng', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 15, N'CPU', N'CPU-A', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (11, N'MSI X299 GAMING M7 ACK', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 4, N'MB', N'MB-IX299', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (12, N'ASUS Z370 ROG MAXIMUS X FORMULA LGA1151V2', N'1000 chữ', N'12 tháng', N'gearvn-k7-a.png', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 3, N'MB', N'MB-IZ370', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (13, N'MSI X370 XPOWER GAMING TITANIUM (AMD Socket AM4)', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 10, N'MB', N'MB-IH370', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (14, N'( IPS 24" 75Hz ) LG 24MP59G-P - Chuyên Gaming | Freesync', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 21, N'MH', N'MH-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (15, N'( IPS 25" ) Dell UltraSharp 25 - U2518D (2K)', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 10, N'MH', N'MH-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (16, N'(TN 25") ASUS ROG Strix XG258Q - 240Hz - 1ms', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 3, N'MH', N'MH-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (17, N'( 600W ) Corsair SF Series SF600 - 600W 80 PLUS Gold', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 2, N'PSU', N'PSU-600', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (18, N'SSD PLEXTOR S3C 128G 550/500 MB/s', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 20, N'SSD', N'SSD-120-128', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (19, N'Giá đỡ tai nghe Corsair ST100 RGB Headstand', N'1000 chữ', N'12 tháng', N'gearvn-ducky-one-s-horizon-1.jpg', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 8, 2, N'TN', N'TN-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (20, N'Giá đỡ tai nghe Corsair ST100 RGB Headstand', N'1000 chữ', N'12 tháng', N'gearvn-k7-a.png', CAST(9999 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 2, N'TN', N'TN-001', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (21, N'Palit GeForce® GTX 1060 Dual 6GB', N'1000 chữ', N'12 tháng', N'gearvn-k7-a.png', CAST(0 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 16, N'VGA', N'VGA-1060-6', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (22, N'Asus ROG Strix GTX 1080 A8G GDDR5X', N'1000 chữ', N'12 tháng', N'gearvn-k7-a.png', CAST(0 AS Decimal(18, 0)), CAST(N'2018-04-26 00:00:00' AS SmallDateTime), 10, 3, N'VGA', N'VGA-1080', N'', N'Mới 100% (1 đổi 1)')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (33, N'Thử nghiệm1', NULL, N'6', N'gearvn_tartarus_v2.jpg', CAST(0 AS Decimal(18, 0)), CAST(N'2018-05-03 00:00:00' AS SmallDateTime), 1, 18, N'BP', N'SSD-120-128', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MotaSP], [BaoHanh], [AnhSP], [GiaSP], [NgayNhapSP], [Soluongton], [MaNSX], [MaLSP], [MaKieu], [MauSP], [Tinhtrang]) VALUES (34, N'SAI', NULL, N'6', N'datatbase.PNG', CAST(0 AS Decimal(18, 0)), CAST(N'2018-05-04 00:00:00' AS SmallDateTime), 1, 18, N'BP', N'SSD-120-128', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
INSERT [dbo].[THANHTOAN] ([MaDDH], [MaKH], [THANHTIEN]) VALUES (1, NULL, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[THANHTOAN] ([MaDDH], [MaKH], [THANHTIEN]) VALUES (2, NULL, CAST(1950000 AS Decimal(18, 0)))
INSERT [dbo].[THANHTOAN] ([MaDDH], [MaKH], [THANHTIEN]) VALUES (3, NULL, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[THANHTOAN] ([MaDDH], [MaKH], [THANHTIEN]) VALUES (4, NULL, CAST(9999999 AS Decimal(18, 0)))
INSERT [dbo].[THANHTOAN] ([MaDDH], [MaKH], [THANHTIEN]) VALUES (5, NULL, CAST(10000999 AS Decimal(18, 0)))
INSERT [dbo].[THANHTOAN] ([MaDDH], [MaKH], [THANHTIEN]) VALUES (6, NULL, CAST(2997 AS Decimal(18, 0)))
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64F0B4E79A1]    Script Date: 04/05/2018 3:47:26 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D10534C6388D1E]    Script Date: 04/05/2018 3:47:26 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DONDATHANG] ([MaDDH])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETPHANLOAI]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHANLOAI_PHANLOAI] FOREIGN KEY([MaPL])
REFERENCES [dbo].[PHANLOAI] ([MaPL])
GO
ALTER TABLE [dbo].[CHITIETPHANLOAI] CHECK CONSTRAINT [FK_CHITIETPHANLOAI_PHANLOAI]
GO
ALTER TABLE [dbo].[CHITIETPHANLOAITHIETBI]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHANLOAITHIETBI_PHANLOAITHIETBI] FOREIGN KEY([MaPLTB])
REFERENCES [dbo].[PHANLOAITHIETBI] ([MaPLTB])
GO
ALTER TABLE [dbo].[CHITIETPHANLOAITHIETBI] CHECK CONSTRAINT [FK_CHITIETPHANLOAITHIETBI_PHANLOAITHIETBI]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_Khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_Khachhang]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_NHASANXUAT] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_NHASANXUAT]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_CHITIETPHANLOAI] FOREIGN KEY([MaKieu])
REFERENCES [dbo].[CHITIETPHANLOAI] ([MaKieu])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_CHITIETPHANLOAI]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_CHITIETPHANLOAITHIETBI] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[CHITIETPHANLOAITHIETBI] ([MaLSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_CHITIETPHANLOAITHIETBI]
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD  CONSTRAINT [FK_TINTUC] FOREIGN KEY([GroupNewsId])
REFERENCES [dbo].[NHOMTT] ([GroupNewsId])
GO
ALTER TABLE [dbo].[TINTUC] CHECK CONSTRAINT [FK_TINTUC]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([GiaSP]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD CHECK  (([GiaSP]>=(0)))
GO
ALTER TABLE [dbo].[THANHTOAN]  WITH CHECK ADD CHECK  (([THANHTIEN]>=(0)))
GO

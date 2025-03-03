USE [QLBN]
GO
/****** Object:  User [quanlynhatroadmine]    Script Date: 12/11/2023 2:53:02 PM ******/
CREATE USER [quanlynhatroadmine] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayMua] [date] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHDCT] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[NgayDK] [date] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[VaiTro] [bit] NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[HinhAnh] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaLSP] [int] NOT NULL,
	[MaNCC] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (1, CAST(N'2023-12-06' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (2, CAST(N'2023-12-06' AS Date), 1, N'kh04', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (3, CAST(N'2023-12-06' AS Date), 1, N'kh05', N'nv02')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (4, CAST(N'2023-12-01' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (5, CAST(N'2023-12-01' AS Date), 1, N'kh02', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (6, CAST(N'2023-12-01' AS Date), 1, N'kh05', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (7, CAST(N'2023-12-02' AS Date), 1, N'kh02', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (8, CAST(N'2023-12-03' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (9, CAST(N'2023-12-07' AS Date), 1, N'kh05', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (10, CAST(N'2023-12-07' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (11, CAST(N'2023-12-07' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (13, CAST(N'2023-12-07' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (14, CAST(N'2023-12-07' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (15, CAST(N'2023-12-07' AS Date), 1, N'kh01', N'nv01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TrangThai], [MaKH], [MaNV]) VALUES (16, CAST(N'2023-12-08' AS Date), 1, N'kh01', N'nv01')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (1, 3, 1, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (2, 3, 2, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (3, 4, 3, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (4, 2, 4, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (5, 2, 5, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (6, 2, 6, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (7, 4, 7, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (8, 2, 8, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (9, 3, 9, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (10, 1, 10, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (11, 1, 10, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (12, 1, 11, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (13, 2, 11, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (17, 1, 13, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (18, 2, 13, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (19, 3, 13, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (20, 1, 14, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (21, 2, 14, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (22, 3, 14, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (23, 1, 15, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (24, 2, 15, N'sp02')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (25, 3, 15, N'sp03')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (26, 3, 16, N'sp01')
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [SoLuong], [MaHD], [MaSP]) VALUES (27, 4, 16, N'sp03')
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DienThoai], [Email], [NgayDK], [GhiChu]) VALUES (N'kh01', N'Nguyễn Bình', CAST(N'2000-02-05' AS Date), N'0376542314', N'binh@gmail.com', CAST(N'2023-11-04' AS Date), NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DienThoai], [Email], [NgayDK], [GhiChu]) VALUES (N'kh02', N'Trần Tuấn', CAST(N'1999-11-23' AS Date), N'0935141828', N'tuan@gmail.com', CAST(N'2023-09-11' AS Date), NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DienThoai], [Email], [NgayDK], [GhiChu]) VALUES (N'kh03', N'Nguyễn Duy', CAST(N'1999-11-09' AS Date), N'0935141213', N'duy@gmail.com', CAST(N'2023-09-11' AS Date), NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DienThoai], [Email], [NgayDK], [GhiChu]) VALUES (N'kh04', N'Võ Thương', CAST(N'1997-11-23' AS Date), N'0935231452', N'thuong@gmail.com', CAST(N'2023-12-11' AS Date), NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DienThoai], [Email], [NgayDK], [GhiChu]) VALUES (N'kh05', N'Bùi Thanh Nam', CAST(N'1987-05-22' AS Date), N'0377556413', N'nam@gmail.com', CAST(N'2023-09-01' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [MoTa]) VALUES (1, N'lon 320 ml', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [MoTa]) VALUES (2, N'chai nhỏ 100 ml', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [MoTa]) VALUES (3, N'chai 500ml', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [MoTa]) VALUES (4, N'chai 450ml', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [MoTa]) VALUES (5, N'chai 555ml', NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Email], [GhiChu]) VALUES (N'ncc01', N'Coca-Cola', N'0512312312', N'Đà Nẵng', N'cocacola@gmail.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Email], [GhiChu]) VALUES (N'ncc02', N'La Vie', N'192133221', N'Huế', N'lavie@gmail.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Email], [GhiChu]) VALUES (N'ncc03', N'Aquafina', N'02321436', N'Quãng Nam', N'aquafina@gmail.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Email], [GhiChu]) VALUES (N'ncc04', N'Dasani', N'096353521', N'Đà Nẵng', N'dasani@gmail.com', NULL)
GO
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [email], [TenNV], [VaiTro], [TrangThai]) VALUES (N'nv01', N'321', N'huylvpd07464@fpt.edu.vn', N'Nam', 1, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [email], [TenNV], [VaiTro], [TrangThai]) VALUES (N'nv02', N'123', N'huylv11052002@gmail.com', N'Tuấn', 0, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [email], [TenNV], [VaiTro], [TrangThai]) VALUES (N'nv03', N'123', N'quoc@gmail.com', N'Trần Quốc', 0, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [email], [TenNV], [VaiTro], [TrangThai]) VALUES (N'nv04', N'321', N'tieuthientd@gmail.com', N'thien', 1, 1)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [HinhAnh], [MoTa], [MaLSP], [MaNCC], [MaNV]) VALUES (N'sp01', N'coca', 134, 10000, N'computer.png', N'abc', 1, N'ncc01', N'nv01')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [HinhAnh], [MoTa], [MaLSP], [MaNCC], [MaNV]) VALUES (N'sp02', N'lavie', 163, 8000, N'chungchiquocphong.png', N'abc', 3, N'ncc02', N'nv01')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [HinhAnh], [MoTa], [MaLSP], [MaNCC], [MaNV]) VALUES (N'sp03', N'aquafina', 262, 9000, N'cocacola.jpg', N'abc', 4, N'ncc03', N'nv01')
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDonKH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDonNV]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonChiTietHD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [fk_HoaDonChiTietHD]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonChiTietSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [fk_HoaDonChiTietSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPhamLSP] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPhamLSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPhamNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPhamNCC]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPhamNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPhamNV]
GO
/****** Object:  StoredProcedure [dbo].[sp_DanhSachHD]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Tạo danh sách hóa đơn
create proc [dbo].[sp_DanhSachHD] @tenKHCanTim nvarchar(50)
as
	begin
		select hd.MaHD, nv.TenNV, kh.TenKH, hd.NgayMua, hd.TrangThai from HoaDon hd
		inner join NhanVien nv on hd.MaNV = nv.MaNV
		inner join KhachHang kh on kh.MaKH = hd.MaKH
		where kh.TenKH like @tenKHCanTim
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuNgay]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Tạo thống kê doang thu tháng hiện tại
create proc [dbo].[sp_DoanhThuNgay] @thang int
as
	begin
		SELECT
			DAY(hd.NgayMua),
			SUM(hdct.SoLuong * sp.DonGia) AS DoanhThu
		FROM
			HoaDon hd
			INNER JOIN HoaDonChiTiet hdct ON hd.MaHD = hdct.MaHD
			INNER JOIN SanPham sp ON hdct.MaSP = sp.MaSP
		WHERE
			MONTH(hd.NgayMua) = @thang and hd.TrangThai = 1
		Group by
			DAY(hd.NgayMua)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuTheoNam]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê doanh thu theo năm
create proc [dbo].[sp_DoanhThuTheoNam] @nam date
as
	begin
		SELECT
			SUM(HoaDonChiTiet.SoLuong * SanPham.DonGia) AS DoanhThu
		FROM
			HoaDon
			INNER JOIN HoaDonChiTiet ON HoaDon.MaHD = HoaDonChiTiet.MaHD
			INNER JOIN SanPham ON HoaDonChiTiet.MaSP = SanPham.MaSP
		WHERE
			YEAR(HoaDon.NgayMua) = YEAR(@nam) and HoaDon.TrangThai = 1
		GROUP BY
			YEAR(HoaDon.NgayMua)
	end



	
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuTheoNgay]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê doanh thu theo ngày
create proc [dbo].[sp_DoanhThuTheoNgay] @ngay Date
as
	begin
		SELECT
			SUM(HoaDonChiTiet.SoLuong * SanPham.DonGia) AS DoanhThu
		FROM
			HoaDon
			INNER JOIN HoaDonChiTiet ON HoaDon.MaHD = HoaDonChiTiet.MaHD
			INNER JOIN SanPham ON HoaDonChiTiet.MaSP = SanPham.MaSP
		WHERE
			HoaDon.NgayMua = @ngay
		GROUP BY
			Day(HoaDon.NgayMua)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuTheoThang]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê doanh thu theo tháng
create proc [dbo].[sp_DoanhThuTheoThang] @ngay date
as
	begin
		SELECT
			SUM(HoaDonChiTiet.SoLuong * SanPham.DonGia) AS DoanhThu
		FROM
			HoaDon
			INNER JOIN HoaDonChiTiet ON HoaDon.MaHD = HoaDonChiTiet.MaHD
			INNER JOIN SanPham ON HoaDonChiTiet.MaSP = SanPham.MaSP
		WHERE
			Month(HoaDon.NgayMua) = MONTH(@ngay) and Year(HoaDon.NgayMua) = Year(@ngay) and HoaDon.TrangThai = 1
		GROUP BY
			Month(HoaDon.NgayMua)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongHoaDonTheoNam]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng hóa đơn theo năm
create proc [dbo].[sp_LuongHoaDonTheoNam] @ngay Date
as
	begin
		SELECT
			COUNT(HoaDon.MaHD) as SoHoaDon
		FROM
			HoaDon
		WHERE
			Year(HoaDon.NgayMua) = YEAR(@ngay)
		GROUP BY
			Year(HoaDon.NgayMua)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongHoaDonTheoNgay]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng hóa đơn theo ngày
create proc [dbo].[sp_LuongHoaDonTheoNgay] @ngay Date
as
	begin
		SELECT
			COUNT(HoaDon.MaHD) as SoHoaDon
		FROM
			HoaDon
		WHERE
			HoaDon.NgayMua = @ngay
		GROUP BY
			DAY(HoaDon.NgayMua)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongHoaDonTheoThang]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng hóa đơn theo tháng
create proc [dbo].[sp_LuongHoaDonTheoThang] @ngay Date
as
	begin
		SELECT
			COUNT(HoaDon.MaHD) as SoHoaDon
		FROM
			HoaDon
		WHERE
			MONTH(HoaDon.NgayMua) = MONTH(@ngay) and YEAR(HoaDon.NgayMua) = YEAR(@ngay)
		GROUP BY
			MONTH(HoaDon.NgayMua)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongKhachTheoNam]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng khách hàng theo năm
create proc [dbo].[sp_LuongKhachTheoNam] @ngay Date
as
	begin		
		SELECT 
			COUNT(DISTINCT MaKH) AS SoKhachHang
		FROM 
			HoaDon
		WHERE 
			YEAR(NgayMua) = YEAR(@ngay)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongKhachTheoNgay]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng khách hàng theo ngày
create proc [dbo].[sp_LuongKhachTheoNgay] @ngay Date
as
	begin		
		SELECT
			COUNT(DISTINCT HoaDon.MaKH) as SoKhachHang
		FROM
			HoaDon
		WHERE
			HoaDon.NgayMua = @ngay
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongKhachTheoThang]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng khách hàng theo tháng
create proc [dbo].[sp_LuongKhachTheoThang] @ngay Date
as
	begin		
		SELECT
			COUNT(DISTINCT HoaDon.MaKH) as SoKhachHang
		FROM
			HoaDon
		WHERE
			MONTH(HoaDon.NgayMua) = MONTH(@ngay) and YEAR(HoaDon.NgayMua) = YEAR(@ngay)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongSanPhamNam]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng khách hàng theo năm
create proc [dbo].[sp_LuongSanPhamNam] @ngay Date
as
	begin		
		Select 
			SUM(SoLuong) as LuongSanPham
		from 
			HoaDon hd 
			inner join HoaDonChiTiet hdct 
			on hd.MaHD = hdct.MaHD
		where 
			YEAR(hd.NgayMua) = YEAR(@ngay)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongSanPhamNgay]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng khách hàng theo năm
create proc [dbo].[sp_LuongSanPhamNgay] @ngay Date
as
	begin		
		Select 
			SUM(SoLuong) as LuongSanPham
		from 
			HoaDon hd 
			inner join HoaDonChiTiet hdct 
			on hd.MaHD = hdct.MaHD
		where 
			hd.NgayMua = @ngay
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_LuongSanPhamThang]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thống kê lượng khách hàng theo thang
create proc [dbo].[sp_LuongSanPhamThang] @ngay Date
as
	begin		
		Select 
			SUM(SoLuong) as LuongSanPham
		from 
			HoaDon hd 
			inner join HoaDonChiTiet hdct 
			on hd.MaHD = hdct.MaHD
		where 
			MONTH(hd.NgayMua) = MONTH(@ngay) and YEAR(hd.NgayMua) = YEAR(@ngay)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThuNgay]    Script Date: 12/11/2023 2:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Thống kê doanh thu các ngày trong tháng
create proc [dbo].[sp_ThongKeDoanhThuNgay]
as
	begin
		SELECT NgayMua, SUM(HoaDonChiTiet.SoLuong * DonGia) AS DoanhThu
		FROM HoaDonChiTiet
		INNER JOIN HoaDon ON HoaDonChiTiet.MaHD = HoaDon.MaHD
		INNER JOIN SanPham ON HoaDonChiTiet.MaSP = SanPham.MaSP
		WHERE MONTH(NgayMua) = MONTH(GETDATE()) and HoaDon.TrangThai = 1
		GROUP BY NgayMua
	end
GO

USE [master]
GO
/****** Object:  Database [LapLichBaoVeLuanVan]    Script Date: 12/28/2018 12:41:03 PM ******/
CREATE DATABASE [LapLichBaoVeLuanVan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LapLichBaoVeLuanVan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\LapLichBaoVeLuanVan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LapLichBaoVeLuanVan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\LapLichBaoVeLuanVan_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LapLichBaoVeLuanVan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET ARITHABORT OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET RECOVERY FULL 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET  MULTI_USER 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LapLichBaoVeLuanVan', N'ON'
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET QUERY_STORE = OFF
GO
USE [LapLichBaoVeLuanVan]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [LapLichBaoVeLuanVan]
GO
/****** Object:  Table [dbo].[CaTrongNgay]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaTrongNgay](
	[Ca] [int] NOT NULL,
	[ThoiDiem] [char](10) NULL,
 CONSTRAINT [PK_CaTrongNgay] PRIMARY KEY CLUSTERED 
(
	[Ca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTai](
	[TenDT] [nvarchar](50) NOT NULL,
	[NamHoc] [int] NOT NULL,
	[HocKy] [int] NOT NULL,
 CONSTRAINT [PK_DeTai] PRIMARY KEY CLUSTERED 
(
	[TenDT] ASC,
	[NamHoc] ASC,
	[HocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [int] NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SLDeTaiToiDa] [int] NULL,
	[myIndex] [int] NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lich]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich](
	[Ngay] [int] NOT NULL,
	[Ca] [int] NOT NULL,
	[Phong] [int] NOT NULL,
	[MaPC] [int] NOT NULL,
 CONSTRAINT [PK_Lich_1] PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC,
	[Ca] ASC,
	[Phong] ASC,
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhom]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhom](
	[MaNhom] [int] NOT NULL,
	[SV1] [nvarchar](50) NULL,
	[SV2] [nvarchar](50) NULL,
	[myIndex] [int] NULL,
 CONSTRAINT [PK_Nhom] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaPC] [int] NOT NULL,
	[GVHuongDan] [int] NULL,
	[GVPhanBien] [int] NULL,
	[UyVien] [int] NULL,
	[MaNhom] [int] NULL,
	[myIndex] [int] NULL,
	[TenDeTai] [nvarchar](50) NULL,
	[NamHoc] [int] NULL,
	[HocKy] [int] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongHoc]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongHoc](
	[MaPH] [int] NOT NULL,
	[TenPH] [nvarchar](50) NULL,
	[myIndex] [int] NULL,
 CONSTRAINT [PK_PhongHoc] PRIMARY KEY CLUSTERED 
(
	[MaPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_CaTrongNgay] FOREIGN KEY([Ca])
REFERENCES [dbo].[CaTrongNgay] ([Ca])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_CaTrongNgay]
GO
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_PhanCong] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhanCong] ([MaPC])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_PhanCong]
GO
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_PhongHoc] FOREIGN KEY([Phong])
REFERENCES [dbo].[PhongHoc] ([MaPH])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_PhongHoc]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_DeTai] FOREIGN KEY([TenDeTai], [NamHoc], [HocKy])
REFERENCES [dbo].[DeTai] ([TenDT], [NamHoc], [HocKy])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_DeTai]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_GiangVien] FOREIGN KEY([GVHuongDan])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_GiangVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_GiangVien1] FOREIGN KEY([GVPhanBien])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_GiangVien1]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_GiangVien2] FOREIGN KEY([UyVien])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_GiangVien2]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_Nhom] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[Nhom] ([MaNhom])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_Nhom]
GO
/****** Object:  StoredProcedure [dbo].[sp_getDanhSachPhanCongChuaTaoLich]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getDanhSachPhanCongChuaTaoLich]

AS
BEGIN
	select * from PhanCong
	where MaPC not in (select MaPC from Lich)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getDanhSachPhanCongChuaTaoLichTheoGiangVien]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getDanhSachPhanCongChuaTaoLichTheoGiangVien]
@MaGV int
AS
BEGIN
	select * from PhanCong
	where (GVHuongDan=@MaGV or GVPhanBien = @MaGV or UyVien = @MaGV) and (MaPC not in (select MaPC from Lich))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getDeTaiChuaDuocPhanCong]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getDeTaiChuaDuocPhanCong]
@HocKy int,
@NamHoc int
AS
BEGIN
	
	select * from DeTai dt
	where dt.HocKy = @HocKy and dt.NamHoc = @NamHoc and dt.TenDT not in (   select pc.TenDeTai
																			from PhanCong pc
																			where pc.HocKy = @HocKy and pc.NamHoc = @NamHoc
																			)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_getNhomChuaPhanCong]    Script Date: 12/28/2018 12:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getNhomChuaPhanCong]

AS
BEGIN
	select MaNhom
	from Nhom nh
	where nh.MaNhom not in (select pc.MaNhom
							from PhanCong pc
							)
END
GO
USE [master]
GO
ALTER DATABASE [LapLichBaoVeLuanVan] SET  READ_WRITE 
GO

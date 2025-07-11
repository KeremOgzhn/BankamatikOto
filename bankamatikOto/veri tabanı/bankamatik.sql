USE [master]
GO
/****** Object:  Database [Bankamatik]    Script Date: 5.07.2025 22:17:31 ******/
CREATE DATABASE [Bankamatik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bankamatik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Bankamatik.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bankamatik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Bankamatik_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Bankamatik] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bankamatik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bankamatik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bankamatik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bankamatik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bankamatik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bankamatik] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bankamatik] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Bankamatik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bankamatik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bankamatik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bankamatik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bankamatik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bankamatik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bankamatik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bankamatik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bankamatik] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bankamatik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bankamatik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bankamatik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bankamatik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bankamatik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bankamatik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bankamatik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bankamatik] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bankamatik] SET  MULTI_USER 
GO
ALTER DATABASE [Bankamatik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bankamatik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bankamatik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bankamatik] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bankamatik] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bankamatik] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Bankamatik] SET QUERY_STORE = ON
GO
ALTER DATABASE [Bankamatik] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Bankamatik]
GO
/****** Object:  Table [dbo].[hareketler]    Script Date: 5.07.2025 22:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hareketler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[musteriID] [int] NULL,
	[islem] [nvarchar](50) NULL,
	[tarih] [date] NULL,
 CONSTRAINT [PK_hareketler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteriler]    Script Date: 5.07.2025 22:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [nvarchar](12) NULL,
	[adSoyad] [nvarchar](50) NULL,
	[adres] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
	[bakiye] [decimal](18, 2) NULL,
	[durum] [bigint] NULL,
 CONSTRAINT [PK_musteriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[hareketler] ON 

INSERT [dbo].[hareketler] ([ID], [musteriID], [islem], [tarih]) VALUES (1, 4, N'50000 TL Para Yatırıldı ', CAST(N'2025-06-30' AS Date))
INSERT [dbo].[hareketler] ([ID], [musteriID], [islem], [tarih]) VALUES (2, 4, N'Bakiye Sorgulandı ', CAST(N'2025-06-30' AS Date))
SET IDENTITY_INSERT [dbo].[hareketler] OFF
GO
SET IDENTITY_INSERT [dbo].[musteriler] ON 

INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (1, N'123', N'Orhan Veli KANIK', N'Adana Seyhan', N'(555) 555-5555', N'1020', CAST(2205.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (4, N'126', N'Ahmet Kaya', N'hatay merkez mah. no 2', N'(555) 123-1111', N'126', CAST(50100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (5, N'129', N'Tarık Akan', N'istanbul tuzla', N'(111) 111-1111', N'129', CAST(3500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (7, N'130', N'cüneyt arkın', N'karaman', N'(555) 555-5555', N'130', CAST(3900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (8, N'131', N'Orhan Baba', N'malatya merkez mh.', N'(333) 333-3333', N'131', CAST(5250.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[musteriler] OFF
GO
ALTER TABLE [dbo].[hareketler]  WITH CHECK ADD  CONSTRAINT [FK_hareketler_musteriler] FOREIGN KEY([musteriID])
REFERENCES [dbo].[musteriler] ([ID])
GO
ALTER TABLE [dbo].[hareketler] CHECK CONSTRAINT [FK_hareketler_musteriler]
GO
USE [master]
GO
ALTER DATABASE [Bankamatik] SET  READ_WRITE 
GO

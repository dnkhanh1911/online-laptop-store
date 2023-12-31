USE [master]
GO
/****** Object:  Database [ProjectGroupp5]    Script Date: 06/08/2023 21:28:09 ******/
CREATE DATABASE [ProjectGroupp5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectGroupp5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KHANH\MSSQL\DATA\ProjectGroupp5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectGroupp5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KHANH\MSSQL\DATA\ProjectGroupp5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectGroupp5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectGroupp5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectGroupp5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectGroupp5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectGroupp5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectGroupp5] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectGroupp5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectGroupp5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectGroupp5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectGroupp5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectGroupp5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectGroupp5', N'ON'
GO
ALTER DATABASE [ProjectGroupp5] SET QUERY_STORE = OFF
GO
USE [ProjectGroupp5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NULL,
	[Pass] [varchar](255) NULL,
	[Permission] [int] NULL,
	[Firtname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[email] [varchar](255) NULL,
	[NumberPhone] [varchar](50) NULL,
	[addres] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cdID] [int] IDENTITY(1,1) NOT NULL,
	[cusID] [int] NULL,
	[productID] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[DateBuy] [date] NULL,
	[Guarantee] [int] NULL,
	[productID] [int] NULL,
	[Seri] [varchar](255) NULL,
	[phone] [varchar](10) NULL,
	[Name] [nvarchar](40) NULL,
	[Address] [nvarchar](250) NULL,
	[AccountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guarantee]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guarantee](
	[AccountID] [int] NOT NULL,
	[ReceivedDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[Progress] [int] NULL,
	[ProductID] [int] NULL,
	[Seri] [varchar](255) NULL,
	[Evaluate] [int] NULL,
	[Comment] [nvarchar](255) NULL,
	[Describe] [nvarchar](255) NULL,
	[GuaranteeID] [int] IDENTITY(1,1) NOT NULL,
	[PersonGuarantee] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[expense] [float] NULL,
	[productImages] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GuaranteeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](255) NULL,
	[productID] [int] NULL,
	[productName] [varchar](255) NULL,
	[Seri] [varchar](255) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[Phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderr]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderr](
	[OrderID] [int] NOT NULL,
	[AccountID] [int] NULL,
	[Total] [int] NULL,
	[OrderDate] [date] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Seri] [varchar](255) NOT NULL,
	[ProductID] [int] NULL,
	[price] [float] NULL,
	[CreateDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[CreateBy] [nvarchar](255) NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[Guarantee] [int] NULL,
	[images] [nvarchar](255) NULL,
	[sell] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[supplierID] [int] NULL,
	[color] [nvarchar](255) NULL,
	[RAM] [varchar](50) NULL,
	[CPU] [varchar](50) NULL,
	[HardDriver] [varchar](50) NULL,
	[Screen] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Describe] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 06/08/2023 21:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierID] [int] IDENTITY(1,1) NOT NULL,
	[supplierName] [varchar](255) NULL,
	[note] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ProjectGroupp5] SET  READ_WRITE 
GO

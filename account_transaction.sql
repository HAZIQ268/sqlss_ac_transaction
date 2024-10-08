USE [master]
GO
/****** Object:  Database [acc_transaction]    Script Date: 10/7/2024 6:26:14 PM ******/
CREATE DATABASE [acc_transaction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'acc_transaction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\acc_transaction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'acc_transaction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\acc_transaction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [acc_transaction] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [acc_transaction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [acc_transaction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [acc_transaction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [acc_transaction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [acc_transaction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [acc_transaction] SET ARITHABORT OFF 
GO
ALTER DATABASE [acc_transaction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [acc_transaction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [acc_transaction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [acc_transaction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [acc_transaction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [acc_transaction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [acc_transaction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [acc_transaction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [acc_transaction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [acc_transaction] SET  DISABLE_BROKER 
GO
ALTER DATABASE [acc_transaction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [acc_transaction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [acc_transaction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [acc_transaction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [acc_transaction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [acc_transaction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [acc_transaction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [acc_transaction] SET RECOVERY FULL 
GO
ALTER DATABASE [acc_transaction] SET  MULTI_USER 
GO
ALTER DATABASE [acc_transaction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [acc_transaction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [acc_transaction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [acc_transaction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [acc_transaction] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'acc_transaction', N'ON'
GO
ALTER DATABASE [acc_transaction] SET QUERY_STORE = OFF
GO
USE [acc_transaction]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [acc_transaction]
GO
/****** Object:  Table [dbo].[account]    Script Date: 10/7/2024 6:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[balance] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [name], [balance]) VALUES (1, N'Habib', 950)
INSERT [dbo].[account] ([id], [name], [balance]) VALUES (2, N'Ibrahim', 4050)
INSERT [dbo].[account] ([id], [name], [balance]) VALUES (3, N'Hamza', 5000)
INSERT [dbo].[account] ([id], [name], [balance]) VALUES (4, N'Haider', 8000)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
USE [master]
GO
ALTER DATABASE [acc_transaction] SET  READ_WRITE 
GO

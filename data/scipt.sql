USE [master]
GO
/****** Object:  Database [BD-Enfrentamientos]    Script Date: 6/10/2022 15:55:30 ******/
CREATE DATABASE [BD-Enfrentamientos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD-Enfrentamientos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD-Enfrentamientos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD-Enfrentamientos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD-Enfrentamientos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD-Enfrentamientos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD-Enfrentamientos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD-Enfrentamientos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD-Enfrentamientos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD-Enfrentamientos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD-Enfrentamientos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD-Enfrentamientos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET RECOVERY FULL 
GO
ALTER DATABASE [BD-Enfrentamientos] SET  MULTI_USER 
GO
ALTER DATABASE [BD-Enfrentamientos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD-Enfrentamientos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD-Enfrentamientos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD-Enfrentamientos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD-Enfrentamientos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD-Enfrentamientos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD-Enfrentamientos', N'ON'
GO
ALTER DATABASE [BD-Enfrentamientos] SET QUERY_STORE = OFF
GO
USE [BD-Enfrentamientos]
GO
/****** Object:  Table [dbo].[Luchadores]    Script Date: 6/10/2022 15:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luchadores](
	[IdLuchador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [varchar](200) NULL,
	[Victorias] [varchar](50) NOT NULL,
	[IQ] [varchar](50) NOT NULL,
	[Fuerza] [varchar](50) NOT NULL,
	[Velocidad] [varchar](50) NOT NULL,
	[Resistencia] [varchar](50) NOT NULL,
	[BattleIQ] [varchar](50) NOT NULL,
	[PoderDestructivo] [varchar](50) NOT NULL,
	[Experiencia] [varchar](50) NOT NULL,
	[Transformaciones] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Luchadores] PRIMARY KEY CLUSTERED 
(
	[IdLuchador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registros]    Script Date: 6/10/2022 15:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registros](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[Luchador1] [varchar](50) NOT NULL,
	[Puntuacion1] [int] NOT NULL,
	[Luchador2] [varchar](50) NOT NULL,
	[Puntuacion2] [int] NOT NULL,
	[Diff] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Registros] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Luchadores] ON 

INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (1, N'Tilín', CAST(N'2014-03-07' AS Date), N'tilin.jfif', N'0', N'75-90', N'75-90', N'90-140', N'60-80', N'90-125', N'55-65', N'65-75', N'110-170')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (2, N'Osito Perú', CAST(N'1998-07-16' AS Date), N'osito_peru.jpeg', N'0', N'80-90', N'90-110', N'60-75', N'100-120', N'90-105', N'120-150', N'70-80', N'140-190')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (3, N'El Pepe', CAST(N'2002-10-23' AS Date), N'elpepe.jfif', N'0', N'60-80', N'70-90', N'80-100', N'70-100', N'100-115', N'100-130', N'75-90', N'110-140')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (4, N'Ete Sech', CAST(N'1992-11-02' AS Date), N'ete_sech.jfif', N'0', N'55-70', N'90-120', N'50-60', N'130-130', N'70-95', N'60-210', N'70-100', N'100-120')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (5, N'Gokú', CAST(N'0737-01-15' AS Date), N'goku.jpg', N'0', N'40-75', N'100-115', N'90-100', N'100-110', N'90-130', N'90-175', N'90-120', N'0-250')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (6, N'Jesús', CAST(N'0001-12-24' AS Date), N'jesus.jpg', N'0', N'70-90', N'50-150', N'50-80', N'60-95', N'100-120', N'999-999', N'100-110', N'70-105')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (7, N'Wazaa', CAST(N'1992-01-30' AS Date), N'waza.jfif', N'0', N'40-95', N'70-100', N'70-100', N'70-100', N'75-110', N'70-100', N'95-110', N'100-120')
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ], [Fuerza], [Velocidad], [Resistencia], [BattleIQ], [PoderDestructivo], [Experiencia], [Transformaciones]) VALUES (8, N'Grom', CAST(N'2000-03-15' AS Date), N'grom.png', N'0', N'50-90', N'90-110', N'70-80', N'50-75', N'70-120', N'110-140', N'80-90', N'100-125')
SET IDENTITY_INSERT [dbo].[Luchadores] OFF
GO
USE [master]
GO
ALTER DATABASE [BD-Enfrentamientos] SET  READ_WRITE 
GO

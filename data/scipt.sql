USE [master]
GO
/****** Object:  Database [BD-Enfrentamientos]    Script Date: 24/10/2022 13:55:11 ******/
CREATE DATABASE [BD-Enfrentamientos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD-Enfrentamientos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD-Enfrentamientos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD-Enfrentamientos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD-Enfrentamientos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD-Enfrentamientos] SET COMPATIBILITY_LEVEL = 140
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
EXEC sys.sp_db_vardecimal_storage_format N'BD-Enfrentamientos', N'ON'
GO
ALTER DATABASE [BD-Enfrentamientos] SET QUERY_STORE = OFF
GO
USE [BD-Enfrentamientos]
GO
/****** Object:  User [alumno]    Script Date: 24/10/2022 13:55:11 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Luchadores]    Script Date: 24/10/2022 13:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luchadores](
	[IdLuchador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [varchar](200) NOT NULL,
	[Victorias] [varchar](50) NOT NULL,
	[IQ_min] [varchar](50) NOT NULL,
	[IQ_max] [int] NOT NULL,
	[Fuerza_min] [int] NOT NULL,
	[Fuerza_max] [int] NOT NULL,
	[Velocidad_min] [int] NOT NULL,
	[Velocidad_max] [int] NOT NULL,
	[Resistencia_min] [int] NOT NULL,
	[Resistencia_max] [int] NOT NULL,
	[BattleIQ_min] [int] NOT NULL,
	[BattleIQ_max] [int] NOT NULL,
	[PoderDestructivo_min] [int] NOT NULL,
	[PoderDestructivo_max] [int] NOT NULL,
	[Experiencia_min] [int] NOT NULL,
	[Experiencia_max] [int] NOT NULL,
	[Transformaciones_min] [int] NOT NULL,
	[Transformaciones_max] [int] NOT NULL,
 CONSTRAINT [PK_Luchadores] PRIMARY KEY CLUSTERED 
(
	[IdLuchador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registros]    Script Date: 24/10/2022 13:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registros](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[IdLuchador1] [int] NOT NULL,
	[Luchador1] [varchar](50) NOT NULL,
	[Puntuacion1] [int] NOT NULL,
	[IdLuchador2] [int] NOT NULL,
	[Luchador2] [varchar](50) NOT NULL,
	[Puntuacion2] [int] NOT NULL,
	[Diff] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Registros] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Luchadores] ON 

INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (1, N'Tilín', CAST(N'2014-03-07' AS Date), N'1.jfif', N'0', N'75', 90, 75, 90, 90, 140, 60, 80, 90, 125, 55, 65, 65, 75, 110, 170)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (2, N'Osito Perú', CAST(N'1998-07-16' AS Date), N'2.jpeg', N'0', N'80', 90, 90, 110, 60, 75, 100, 120, 90, 105, 120, 150, 70, 80, 140, 190)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (3, N'El Pepe', CAST(N'2002-10-23' AS Date), N'3.jfif', N'0', N'60', 80, 70, 90, 80, 100, 70, 100, 100, 115, 100, 130, 75, 90, 110, 140)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (4, N'Ete Sech', CAST(N'1992-11-02' AS Date), N'4.jfif', N'0', N'55', 70, 90, 120, 50, 60, 120, 130, 70, 95, 60, 210, 70, 100, 100, 120)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (5, N'Gokú', CAST(N'3737-01-15' AS Date), N'5.jpg', N'0', N'40', 75, 100, 115, 90, 100, 100, 110, 90, 130, 90, 175, 90, 120, 0, 250)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (6, N'Jesús', CAST(N'3000-12-24' AS Date), N'6.jpg', N'0', N'70', 90, 50, 150, 50, 80, 60, 95, 100, 120, 250, 250, 100, 110, 70, 105)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (7, N'Wazaa', CAST(N'1992-01-30' AS Date), N'7.jfif', N'0', N'40', 95, 70, 100, 70, 100, 70, 100, 75, 110, 70, 100, 95, 110, 100, 120)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (8, N'Grom', CAST(N'2000-03-15' AS Date), N'8.png', N'0', N'50', 90, 90, 110, 70, 80, 50, 75, 70, 120, 110, 140, 80, 90, 100, 125)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (9, N'Among Us', CAST(N'2018-06-15' AS Date), N'9.png', N'0', N'80', 100, 70, 80, 55, 75, 50, 80, 50, 130, 55, 65, 60, 70, 90, 110)
INSERT [dbo].[Luchadores] ([IdLuchador], [Nombre], [FechaNacimiento], [Foto], [Victorias], [IQ_min], [IQ_max], [Fuerza_min], [Fuerza_max], [Velocidad_min], [Velocidad_max], [Resistencia_min], [Resistencia_max], [BattleIQ_min], [BattleIQ_max], [PoderDestructivo_min], [PoderDestructivo_max], [Experiencia_min], [Experiencia_max], [Transformaciones_min], [Transformaciones_max]) VALUES (10, N'Emile Zola', CAST(N'1840-04-02' AS Date), N'10.png', N'0', N'90', 120, 70, 90, 70, 80, 50, 65, 80, 90, 40, 55, 80, 100, 80, 100)
SET IDENTITY_INSERT [dbo].[Luchadores] OFF
GO
USE [master]
GO
ALTER DATABASE [BD-Enfrentamientos] SET  READ_WRITE 
GO

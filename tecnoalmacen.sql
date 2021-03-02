USE [master]
GO
/****** Object:  Database [AlmacenTecno]    Script Date: 27/2/2021 15:21:56 ******/
CREATE DATABASE [AlmacenTecno] ON  PRIMARY 
( NAME = N'AlmacenTecno', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AlmacenTecno.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlmacenTecno_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AlmacenTecno_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlmacenTecno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlmacenTecno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlmacenTecno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlmacenTecno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlmacenTecno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlmacenTecno] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlmacenTecno] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AlmacenTecno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlmacenTecno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlmacenTecno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlmacenTecno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlmacenTecno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlmacenTecno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlmacenTecno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlmacenTecno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlmacenTecno] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AlmacenTecno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlmacenTecno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlmacenTecno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlmacenTecno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlmacenTecno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlmacenTecno] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AlmacenTecno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlmacenTecno] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AlmacenTecno] SET  MULTI_USER 
GO
ALTER DATABASE [AlmacenTecno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlmacenTecno] SET DB_CHAINING OFF 
GO
USE [AlmacenTecno]
GO
/****** Object:  Table [dbo].[catArticulos]    Script Date: 27/2/2021 15:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catArticulos](
	[idArticulo] [int] IDENTITY(2,2) NOT NULL,
	[nombreArticulo] [varchar](100) NOT NULL,
	[idMarca] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catMarcas]    Script Date: 27/2/2021 15:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catMarcas](
	[idMarca] [int] IDENTITY(2,2) NOT NULL,
	[nombreMarca] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[catArticulos]  WITH CHECK ADD  CONSTRAINT [FK_catArticulos_catMarcas] FOREIGN KEY([idMarca])
REFERENCES [dbo].[catMarcas] ([idMarca])
GO
ALTER TABLE [dbo].[catArticulos] CHECK CONSTRAINT [FK_catArticulos_catMarcas]
GO
/****** Object:  StoredProcedure [dbo].[agregarArticulo]    Script Date: 27/2/2021 15:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[agregarArticulo](

  @nombreArticulo varchar(100),
  @idMarca int
  )
  as
  begin
  insert into catArticulos( nombreArticulo, idMarca) values( @nombreArticulo, @idMarca);
  end
GO
/****** Object:  StoredProcedure [dbo].[agregarMarca]    Script Date: 27/2/2021 15:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[agregarMarca](  
  @nombreMarca varchar(100)
  )
  as
  begin
  insert into catMarcas(nombreMarca) values(@nombreMarca);
  end
GO
USE [master]
GO
ALTER DATABASE [AlmacenTecno] SET  READ_WRITE 
GO

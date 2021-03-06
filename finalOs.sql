USE [master]
GO
/****** Object:  Database [AlmacenTecno]    Script Date: 3/3/2021 23:07:53 ******/
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
/****** Object:  Table [dbo].[catArticulos]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catArticulos](
	[idArticulo] [int] IDENTITY(1,1) NOT NULL,
	[nombreArticulo] [varchar](100) NOT NULL,
	[categoria] [varchar](100) NOT NULL,
	[idProveedores] [int] NOT NULL,
	[idMarca] [int] NOT NULL,
 CONSTRAINT [PK__catArtic__AABB742234E332CB] PRIMARY KEY CLUSTERED 
(
	[idArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catEmpleados]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catEmpleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[numCedula] [varchar](30) NOT NULL,
	[primerNombre] [varchar](30) NOT NULL,
	[primerApellido] [varchar](30) NOT NULL,
	[fechaEntrada] [date] NULL,
 CONSTRAINT [PK__catEmple__5295297CB07D672A] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__catEmple__3012A775F3E96E51] UNIQUE NONCLUSTERED 
(
	[numCedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catMarcas]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catMarcas](
	[idMarca] [int] IDENTITY(1,1) NOT NULL,
	[nombreMarca] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catProveedores]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catProveedores](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombreProveedor] [varchar](100) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[ciudad] [varchar](30) NOT NULL,
 CONSTRAINT [PK_catProveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClientes]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[numCedula] [varchar](30) NOT NULL,
	[primerNombre] [varchar](30) NOT NULL,
	[primerApellido] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[numCedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompras]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompras](
	[idCompra] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[articulo] [varchar](100) NOT NULL,
	[cantidad] [decimal](18, 0) NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[iva] [decimal](18, 0) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_tblCompras] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVentas]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVentas](
	[idVentas] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[cantidad] [decimal](18, 0) NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[iva] [decimal](18, 0) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK__facturaV__A6C618C91B44E476] PRIMARY KEY CLUSTERED 
(
	[idVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblVentas] ADD  CONSTRAINT [DF_tblVentas_iva]  DEFAULT ((0)) FOR [iva]
GO
ALTER TABLE [dbo].[catArticulos]  WITH CHECK ADD  CONSTRAINT [FK_catArticulos_catMarcas] FOREIGN KEY([idMarca])
REFERENCES [dbo].[catMarcas] ([idMarca])
GO
ALTER TABLE [dbo].[catArticulos] CHECK CONSTRAINT [FK_catArticulos_catMarcas]
GO
ALTER TABLE [dbo].[catArticulos]  WITH CHECK ADD  CONSTRAINT [FK_catArticulos_catProveedores] FOREIGN KEY([idProveedores])
REFERENCES [dbo].[catProveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[catArticulos] CHECK CONSTRAINT [FK_catArticulos_catProveedores]
GO
ALTER TABLE [dbo].[tblCompras]  WITH CHECK ADD  CONSTRAINT [FK_tblCompras_catEmpleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[catEmpleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[tblCompras] CHECK CONSTRAINT [FK_tblCompras_catEmpleados]
GO
ALTER TABLE [dbo].[tblCompras]  WITH CHECK ADD  CONSTRAINT [FK_tblCompras_catProveedores] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[catProveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[tblCompras] CHECK CONSTRAINT [FK_tblCompras_catProveedores]
GO
ALTER TABLE [dbo].[tblVentas]  WITH CHECK ADD  CONSTRAINT [FK_tblVentas_catEmpleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[catEmpleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[tblVentas] CHECK CONSTRAINT [FK_tblVentas_catEmpleados]
GO
ALTER TABLE [dbo].[tblVentas]  WITH CHECK ADD  CONSTRAINT [FK_tblVentas_tblClientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[tblClientes] ([idCliente])
GO
ALTER TABLE [dbo].[tblVentas] CHECK CONSTRAINT [FK_tblVentas_tblClientes]
GO
/****** Object:  StoredProcedure [dbo].[agregarArticulo]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[agregarArticulo](

  @nombreArticulo varchar(100),
  @categoria varchar(100),
  @idProveedores int,
  @idMarca int
  )
  as
  begin
  insert into catArticulos( nombreArticulo, categoria, idProveedores, idMarca) values( @nombreArticulo, @categoria, @idProveedores, @idMarca);
  end
GO
/****** Object:  StoredProcedure [dbo].[agregarMarca]    Script Date: 3/3/2021 23:07:54 ******/
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
/****** Object:  StoredProcedure [dbo].[borrarMarcas]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[borrarMarcas](
  @idMarca int
  )
  as
  begin
  delete from catMarcas where idMarca = @idMarca;
  end
GO
/****** Object:  StoredProcedure [dbo].[editarMarcas]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[editarMarcas](
  @idMarca int,
  @nombreMarca varchar(50)
  )
  as
  begin
  update catMarcas SET nombreMarca = @nombreMarca WHERE idMarca = @idMarca;
  end
GO
/****** Object:  StoredProcedure [dbo].[insertarCliente]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[insertarCliente](
   @numCedula varchar(20),
   @primerNombre varchar(50),
   @primerApellido varchar(50)
   )
   as
   begin
   insert into tblClientes(numCedula, primerNombre, primerApellido) values(@numCedula, @primerNombre, @primerApellido)
   end
GO
/****** Object:  StoredProcedure [dbo].[insertarCompra]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[insertarCompra](
  @fecha date,
  @idProveedor int,
  @idEmpleado int,
  @articulo varchar(100),
  @cantidad decimal,
  @precio decimal,
  @iva decimal,
  @total decimal
  )
  as
  begin
  insert into tblCompras(fecha, idProveedor, idEmpleado, articulo, cantidad, precio, iva, total)
  values(@fecha, @idProveedor, @idEmpleado, @articulo, @cantidad, @precio, @iva, @total)
  end
GO
/****** Object:  StoredProcedure [dbo].[insertarEmpleado]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertarEmpleado](

@numCedula varchar(30),
@primerNombre varchar(30),
@primerApellido varchar(30),
@fechaEntrada date
)
as
begin
insert into catEmpleados( numCedula, primerNombre, primerApellido, fechaEntrada) values( @numCedula, @primerNombre, @primerApellido, @fechaEntrada)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarProveedor]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[insertarProveedor](

 @nombreProveedor varchar(50),
 @correo varchar(100),
 @telefono varchar(20),
 @ciudad varchar(50)
 )
 as
 begin
 insert into catProveedores( nombreProveedor, correo, telefono, ciudad) values( @nombreProveedor, @correo, @telefono, @ciudad)
 end
GO
/****** Object:  StoredProcedure [dbo].[insertarVenta]    Script Date: 3/3/2021 23:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[insertarVenta](
   @fecha date,
  @idCliente int,
  @idEmpleado int,
  @cantidad decimal,
  @precio decimal,
  @iva decimal,
  @total decimal
  )
  as
  begin
  insert into tblVentas(fecha, idCliente, idEmpleado, cantidad, precio, iva, total)
  values(@fecha, @idCliente, @idEmpleado, @cantidad, @precio, @iva, @total)
  end
GO
USE [master]
GO
ALTER DATABASE [AlmacenTecno] SET  READ_WRITE 
GO

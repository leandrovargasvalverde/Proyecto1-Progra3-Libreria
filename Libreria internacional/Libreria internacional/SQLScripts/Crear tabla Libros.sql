--CREATE DATABASE "Base_Libros"

USE [Base_Libros]
GO

/****** Object:  Table [dbo].[Tabla_Libros]    Script Date: 10/4/2022 16:37:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tabla_Libros](
	[ISBN] [int] IDENTITY(1,1) NOT NULL,
	[Foto] [varchar](200) NULL,
	[Titulo] [varchar](200) NULL,
	[Autor] [varchar](200) NULL,
	[Fecha_de_publicacion] [varchar](50) NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Precio] [money] NULL
) ON [PRIMARY]
GO

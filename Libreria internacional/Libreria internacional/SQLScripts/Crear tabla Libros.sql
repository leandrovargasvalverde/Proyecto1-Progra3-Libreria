USE [Base_Libros]
GO

/****** Object:  Table [dbo].[Taba_Libros]    Script Date: 30/3/2022 23:06:38 ******/
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
	[Precio] [money] NULL
) ON [PRIMARY]
GO



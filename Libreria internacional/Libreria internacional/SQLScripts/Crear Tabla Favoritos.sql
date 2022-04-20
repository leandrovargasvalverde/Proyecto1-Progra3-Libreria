USE [Base_Libros]
GO

/****** Object:  Table [dbo].[Tabla_Favoritos]    Script Date: 20/04/2022 17:44:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tabla_Favoritos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ISBN] [int] NULL
) ON [PRIMARY]
GO
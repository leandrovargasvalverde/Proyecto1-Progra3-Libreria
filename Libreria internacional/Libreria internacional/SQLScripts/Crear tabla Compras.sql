USE [Base_Libros]
GO

/****** Object:  Table [dbo].[Tabla_Compras]    Script Date: 1/4/2022 11:53:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tabla_Compras](
	[Codigo_Libro] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [varchar](200) NULL,
	[Cantidad_libros] [int] NULL,
	[Fecha_compra] [datetime] NULL,
	[Fecha_llegada_compra] [datetime] NULL,
	[Monto_con_IVA] [int] NULL,
	[Monto_sin_IVA] [int] NULL,
	[Monto_final] [int] NULL,
	[Monto_Unidad] [int] NULL
) ON [PRIMARY]
GO



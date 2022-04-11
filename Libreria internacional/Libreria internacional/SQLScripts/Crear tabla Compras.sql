USE [Base_Libros]
GO

/****** Object:  Table [dbo].[Tabla_Compras]    Script Date: 10/4/2022 16:36:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tabla_Compras](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Libro] [int] NULL,
	[Correo] [varchar](200) NULL,
	[Cantidad_libros] [int] NULL,
	[Fecha_compra] [datetime] NULL,
	[Fecha_llegada_compra] [datetime] NULL,
	[Monto_con_IVA] [int] NULL,
	[Monto_sin_IVA] [int] NULL,
	[Monto_final] [int] NULL,
	[Monto_Unidad] [int] NULL,
	[Nombre] [varchar](200) NULL,
	[Pais] [varchar](200) NULL,
	[Estado] [varchar](200) NULL,
	[Direccion_de_entrega] [varchar](200) NULL,
	[Codigo_postal] [varchar](200) NULL,
	[Numero_de_tarjeta] [varchar](200) NULL,
	[Fecha_de_expiracion] [varchar](200) NULL,
	[Codigo_de_seguridad] [varchar](200) NULL,
 CONSTRAINT [PK_Tabla_Compras] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



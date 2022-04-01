USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spGuardar_Compras]    Script Date: 31/3/2022 22:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGuardar_Compras] 	
@Codigo_Libro int,
@Correo varchar(50),
@Cantidad_libros int,
@Fecha_compra datetime,
@Fecha_llegada_compra datetime,
@Monto_con_IVA int,
@Monto_sin_IVA int,
@Monto_final int,
@Monto_Unidad int

AS
BEGIN
	INSERT INTO [dbo].[Tabla_Compras]
           ([Codigo_Libro]
           ,[Correo]
           ,[Cantidad_libros]
           ,[Fecha_compra]
           ,[Fecha_llegada_compra]
           ,[Monto_con_IVA]
           ,[Monto_sin_IVA]
           ,[Monto_final]
           ,[Monto_Unidad])
     VALUES
           (@Codigo_Libro
           ,@Correo
           ,@Cantidad_libros
           ,@Fecha_compra 
           ,@Fecha_llegada_compra
           ,@Monto_con_IVA
           ,@Monto_sin_IVA
           ,@Monto_final
           ,@Monto_Unidad)
END
go
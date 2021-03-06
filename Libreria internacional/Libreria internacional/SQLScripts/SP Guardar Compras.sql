USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spGuardar_Compras]    Script Date: 13/4/2022 10:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGuardar_Compras] 	
@Codigo_Libro int,
@Correo varchar(200),
@Cantidad_libros int,
@Fecha_compra varchar(200),
@Fecha_llegada_compra varchar(200),
@Monto_con_IVA int,
@Monto_sin_IVA int,
@Monto_final int,
@Monto_Unidad int,
@Nombre varchar(200),
@Pais varchar(200),
@Estado varchar(200),
@Direccion_de_entrega varchar(200),
@Codigo_postal varchar(200),
@Numero_de_tarjeta varchar(200),
@Fecha_de_expiracion varchar(200),
@Codigo_de_seguridad varchar(200)

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
           ,[Monto_Unidad] 
		   ,[Nombre]
           ,[Pais]
           ,[Estado]
           ,[Direccion_de_entrega]
           ,[Codigo_postal]
           ,[Numero_de_tarjeta]
           ,[Fecha_de_expiracion]
           ,[Codigo_de_seguridad])
     VALUES
           (@Codigo_Libro
           ,@Correo
           ,@Cantidad_libros
           ,@Fecha_compra 
           ,@Fecha_llegada_compra
           ,@Monto_con_IVA
           ,@Monto_sin_IVA
           ,@Monto_final
           ,@Monto_Unidad
		   ,@Nombre 
		   ,@Pais 
		   ,@Estado 
		   ,@Direccion_de_entrega 
		   ,@Codigo_postal 
		   ,@Numero_de_tarjeta 
		   ,@Fecha_de_expiracion 
		   ,@Codigo_de_seguridad)
END

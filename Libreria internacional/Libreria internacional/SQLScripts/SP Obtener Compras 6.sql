USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spObtener_Compras]    Script Date: 1/4/2022 19:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spObtener_Compras] 
@correo varchar(50)
AS
BEGIN
	SELECT 
	a.ID,
	a.Codigo_Libro,
	a.Correo,
	a.Cantidad_libros,
	a.Fecha_Compra,
	a.Fecha_llegada_compra,
	a.Monto_con_IVA,
	a.Monto_sin_IVA,
	a.Monto_final,
	a.Monto_Unidad,
	j.Foto,
	j.Titulo
  FROM Tabla_Compras a
  INNER JOIN Tabla_Libros j
  ON j.ISBN = a.Codigo_Libro 
	WHERE a.Correo =@correo
END
go
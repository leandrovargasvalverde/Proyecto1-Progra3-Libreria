USE [Base_Libros]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtener_Favoritos] 

--ALTER PROCEDURE [dbo].[spObtener_Favoritos]  
@correo varchar(50)
AS
BEGIN
	SELECT
	j.Autor,
	j.Fecha_de_publicacion,
	j.Precio,
	j.Foto,
	j.Codigo,
	j.Titulo
  FROM Tabla_Compras a
  INNER JOIN Tabla_Libros j
  ON j.ISBN = a.Codigo_Libro 
	WHERE a.Correo =@correo
END
GO
USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spObtener_Favoritos]    Script Date: 20/04/2022 17:32:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtener_Favoritos] 

AS
BEGIN
	SELECT
	j.Autor,
	j.Fecha_de_publicacion,
	j.Precio,
	j.Foto,
	j.Codigo,
	j.Titulo
  FROM Tabla_Favoritos a
  INNER JOIN Tabla_Libros j
  ON j.ISBN = a.ISBN 
END

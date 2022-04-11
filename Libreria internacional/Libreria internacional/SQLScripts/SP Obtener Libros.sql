USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spObtener_libros]    Script Date: 10/4/2022 16:34:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spObtener_libros] 	
AS
BEGIN
	SELECT 
		ISBN,Foto,Titulo,Autor,Fecha_de_publicacion,Precio
	FROM Tabla_Libros
END

USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spObtener_libros]    Script Date: 31/3/2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtener_libros] 	
AS
BEGIN
	SELECT 
		ISBN,Foto,Titulo,Autor,Fecha_de_publicacion,Precio
	FROM Tabla_Libros
END

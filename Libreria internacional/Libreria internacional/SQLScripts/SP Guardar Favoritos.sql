USE [Base_Libros]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spGuardar_Favoritos]
@ISBN int

AS
BEGIN
	INSERT INTO [dbo].[Tabla_Favoritos]
           ([ISBN])
     VALUES
           (@ISBN)
END
GO
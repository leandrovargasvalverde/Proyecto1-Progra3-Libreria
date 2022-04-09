USE [Base_Libros]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGuardar_Favoritos]
@ISBN int,
@Titulo varchar(200),
@Autor varchar(200),
@Fecha_de_publicacion varchar(50),
@Precio money

AS
BEGIN
	INSERT INTO [dbo].[Tabla_Favoritos]
           ([ISBN]
           ,[Titulo]
           ,[Autor]
           ,[Fecha_de_publicacion]
           ,[Precio])
     VALUES
           (@ISBN
           ,@Titulo
           ,@Autor
           ,@Fecha_de_publicacion
           ,@Precio)
END
GO
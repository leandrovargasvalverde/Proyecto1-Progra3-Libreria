USE [Base_Libros]
GO

INSERT INTO [dbo].[Tabla_Libros]
           ([Foto]
           ,[Titulo]
           ,[Autor]
           ,[Fecha_de_publicacion]
           ,[Precio])
     VALUES
           (<Foto, varchar(200),>
           ,<Titulo, varchar(200),>
           ,<Autor, varchar(200),>
           ,<Fecha_de_publicacion, varchar(50),>
           ,<Precio, money,>)
GO



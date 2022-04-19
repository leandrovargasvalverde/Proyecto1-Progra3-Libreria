USE [Base_Libros]
GO

INSERT INTO [dbo].[Tabla_Libros]
           ([Foto]
           ,[Titulo]
           ,[Autor]
           ,[Fecha_de_publicacion]
		   ,[Codigo]
           ,[Precio])

VALUES
('\Assets\Imagenes\1.jpg' ,'Señor De Los Anillos 1','J. R. R. TOLKIEN','2012','9788445000663',10800),
('\Assets\Imagenes\2.jpg' ,'Harry Potter 1','J. K. ROWLING' ,'2016','9788478884452',14800),
('\Assets\Imagenes\3.jpg','El Hobbit','J.R.R Tolkien','2014' ,'9786070724145',10800),
('\Assets\Imagenes\4.jpg','Cronica De Una Muerte Anunciada','Gabriel Garcia Marquez','2015' ,'9786070729560',8900),
('\Assets\Imagenes\5.jpg','Niño Con El Pijama De Rayas','John Boyne','2015' ,'9788418173417',8900),
('\Assets\Imagenes\6.jpg','Animales Fantasticos Y Donde Encontrarlos','J.K. Rowling','2027' ,'9788498388237',25000),
('\Assets\Imagenes\7.jpg','Cuentos Completos Melville','Herman Melville','2017' ,'9788490655733',25000),
('\Assets\Imagenes\8.jpg','Campanas No Doblan Por Nadie','Gabriel Garcia Marquez','2019' ,'9788433980328',11500),
('\Assets\Imagenes\9.jpg','America','Franz Kafka','2018' ,'9788491050223',4900),
('\Assets\Imagenes\10.jpg','Robinson Crusoe','Daniel Defoe','2016' ,'9788491050223',10800),
('\Assets\Imagenes\11.jpg','La Odisea','Homero','2015' ,'9788491050803',9900),
('\Assets\Imagenes\12.jpg','Metamorfosis','Franz Kafka','2020' ,'9788467058758',4500),
('\Assets\Imagenes\13.jpg','Alicia En El País De Las Maravillas','Lewis Carroll','2006' ,'9788497644730',3500),
('\Assets\Imagenes\14.jpg','Contacto','Carl Sagan','2018' ,'9786073166447',13800),
('\Assets\Imagenes\15.jpg','La Isla Misteriosa','Julio Verne','2016' ,'9788498387131',12800)

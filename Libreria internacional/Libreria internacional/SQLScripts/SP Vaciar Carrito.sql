USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spObtener_libros]    Script Date: 10/4/2022 16:34:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spVaciar_Carrito] 	
AS
BEGIN
	TRUNCATE TABLE Tabla_Compras
END
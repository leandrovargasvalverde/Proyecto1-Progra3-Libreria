USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spObtener_Compras]    Script Date: 31/3/2022 22:53:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtener_Compras] 
@correo varchar(50)
AS
BEGIN
	SELECT 
		*
	FROM Tabla_Compras
	WHERE Correo =@correo
END
go

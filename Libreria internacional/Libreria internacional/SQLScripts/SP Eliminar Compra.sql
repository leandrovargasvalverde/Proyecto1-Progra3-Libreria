USE [Base_Libros]
GO
/****** Object:  StoredProcedure [dbo].[spGuardar_Compras]    Script Date: 17/4/2022 21:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminar_Compras] 	
@ID INT

AS
BEGIN
	DELETE FROM Tabla_Compras WHERE @ID = ID
END
GO

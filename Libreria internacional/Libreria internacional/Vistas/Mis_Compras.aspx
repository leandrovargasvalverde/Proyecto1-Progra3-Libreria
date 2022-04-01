﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mis_Compras.aspx.cs" Inherits="Libreria_internacional.Vistas.Mis_Compras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <a class="navbar-brand">Libreria Internacional</a>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Principal.aspx">Inicio</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Mi_Carrito.aspx">Mi carrito</a>
                        </li>
           
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Contactenos</a>
                        </li>
                        
                        <li class="nav-item" id="CerrarSesion" runat="server" hidden="hidden">
                            <a class="nav-link" runat="server" >Cerrar sesion</a>
                        </li>
                </div>
            </div>
        </nav>

          <div class="container-fluid ml-3" style="margin-top: 10%">
            <div class="row">
                <asp:Repeater ID="Rep_Compras" runat="server">
                    <ItemTemplate>
                        <div class="card" style="max-width: 20%; margin-right: 2%">
                            
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Correo") %></h5>
                                <p class="card-text">Autor: <%# Eval("Cantidad_libros") %></p>
                                <p class="card-text">Autor: <%# Eval("Fecha_compra") %></p>
                                <p class="card-text">Autor: <%# Eval("Fecha_llegada_compra") %></p>
                                <p class="card-text">Autor: <%# Eval("Monto_con_IVA") %></p>
                                <p class="card-text">Autor: <%# Eval("Monto_sin_IVA") %></p>
                                <p class="card-text">Autor: <%# Eval("Monto_final") %></p>
                                <p class="card-text">Autor: <%# Eval("Monto_Unidad") %></p>
              
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>

</html>

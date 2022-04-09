﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mis_Favoritos.aspx.cs" Inherits="Libreria_internacional.Vistas.Mis_Favoritos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                            <a class="nav-link" runat="server">Cerrar sesion</a>
                        </li>
                </div>
            </div>
        </nav>

        <div id="divAlert" hidden="hidden" role="alert" runat="server">
            <label id="lblAlert" runat="server"></label>
        </div>

        <div class="container-fluid ml-3" style="margin-top: 5%">
            <div class="row">
                <asp:Repeater ID="Rep_Favoritos" runat="server">
                    <ItemTemplate>
                        <div class="card mb-3" style="max-width: 30%; max-height: 30%; margin-right: 2%">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img style="margin-top: 10%" src=" <%# Eval("Foto") %>" class="img-fluid rounded-start">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%# Eval("Titulo") %></h5>
                                        <p class="card-text">Autor: <%# Eval("Autor") %></p>
                                        <p class="card-text">Fecha de publicacion: <%# Eval("Fecha_de_publicacion") %></p>
                                        <strong class="card-text">Precio: ₡<%# Eval("Precio") %> / u</strong>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>

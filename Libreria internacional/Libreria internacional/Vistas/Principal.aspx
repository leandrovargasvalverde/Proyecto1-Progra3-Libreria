﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Libreria_internacional.Vistas.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
                        <li class="nav-item" id="Reservaciones" runat="server" hidden="hidden">
                            <a class="nav-link" href="reservaciones.aspx">Mis reservaciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Contactenos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">iniciar sesion</a>
                        </li>
                        <li class="nav-item" id="CerrarSesion" runat="server" hidden="hidden">
                            <a class="nav-link" runat="server" onserverclick="CerrarSesion_Click">Cerrar sesión</a>
                        </li>
                </div>
            </div>
        </nav>
        <div id="divAlert" hidden="hidden" role="alert" runat="server">
            <label id="lblAlert" runat="server"></label>
        </div>



        <div class="container-fluid ml-3" style="margin-top: 10%">
            <div class="row">
                <asp:Repeater ID="Rep_Libros" runat="server">
                    <ItemTemplate>
                        <div class="card" style="max-width: 20%; margin-right: 2%">
                            <img src="<%# Eval(" Foto") %>" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Titulo") %></h5>
                                <p class="card-text">Autor: <%# Eval("Autor") %></p>
                                <p class="card-text">Fecha de publicacion: <%# Eval("Fecha_de_publicacion") %></p>
                                <strong class="card-text">Precio: ₡<%# Eval("Precio") %> / p</strong>
                                <a style="float: left; margin-top: 10%" href="Mi_Carrito.aspx?Codigo=<%# Eval("ISBN") %>" class="btn btn-outline-info">Añadir a mi carrito</a>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>


        <div class="offcanvas offcanvas-end" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasScrollingLabel">
            <div class="offcanvas-header primary-color">
                 <strong class="card-text"style="font-size:150%; background-color:aqua; border-radius: 2%">  Libreria Internacional  </strong>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                
                <div class="card" id="cardLogin" runat="server">
                    <div class="card-body">
                        <div class="form-floating mb-3">
                            <input runat="server" type="email" class="form-control" id="txtEmail" placeholder="name@example.com" />
                            <label for="floatingInput">Email</label>
                        </div>
                        <div class="form-floating">
                            <input runat="server" type="password" class="form-control" id="txtPassword" placeholder="Password" />
                            <label for="floatingPassword">Password</label>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button id="btnLogin" runat="server" class="btn btn-primary" style="width: 100%" onserverclick="Login_Click">Login</button>
                    </div>
                </div>
                <div class="card" id="cardUser" runat="server" hidden="hidden" style="margin-top: 15%">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" style="width: 100px; margin-top: -65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3" />
                            <h5 class="card-title">
                                <label id="lblName" runat="server"></label>
                            </h5>
                            <p class="text-secondary mb-1">Senior Software Engineer</p>
                            <p class="text-muted font-size-sm">Ciudad Colón, Mora</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

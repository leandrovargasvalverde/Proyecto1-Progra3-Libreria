<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Libreria_internacional.Vistas.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Libreria Internacional</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>

</head>
<body>
    <style>
        body {
            background-size: 20%;
            background-image: url("https://previews.123rf.com/images/zinako/zinako1708/zinako170801291/85308977-fun-seamless-pattern-with-cartoon-books-can-be-used-for-wallpaper-pattern-fills-greeting-cards-webpa.jpg");
            width: 100vw;
            height: 100vh;
            position: absolute;
        }
    </style>

        <div class="container">
            <div class="row align-items-stretch justify-content-between">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                            <a class="navbar-brand" href="Principal.aspx">Libreria Internacional</a>
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                                <!-- <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="Principal.aspx">Inicio</a>
                                </li>-->

                                <!--<li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Mi_Carrito.aspx">Mi carrito</a>
                        </li>-->

                                <li class="nav-item" id="Reservaciones" runat="server" hidden="hidden">
                                    <a class="nav-link active" href="Mis_Compras.aspx">Mis Compras</a>
                                </li>

                                <li class="nav-item" id="Favoritos" runat="server" hidden="hidden">
                                    <a class="nav-link active" href="Mis_Favoritos.aspx">Mis Favoritos</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Contactenos</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">Iniciar sesion</a>
                                </li>

                                <li class="nav-item" id="CerrarSesion" runat="server" hidden="hidden">
                                    <a class="nav-link active" runat="server" onserverclick="CerrarSesion_Click">Cerrar sesion</a>
                                </li>
                            </ul>   

                           <form id="form2" class="d-flex">
                                <input class="form-control me-2" type="text" placeholder="Filtro" aria-label="Search" style="width: 70%"./>
                                <button class="btn btn-info" type="submit" href="FiltroLibro.aspx?Titulo=<%# Eval("Titulo") %>">Buscar</button>
                           </form>                                        
                         </div>                      
                        </div>
                </nav>
            </div>
        </div>
        <br />
        <br />
        <div id="divAlert" hidden="hidden" role="alert" runat="server">
            <label id="lblAlert" runat="server"></label>
        </div>
        
        <div align="center">
            <img src="../Assets/Imagenes/logo.png" />
        </div>
        <form id="form1" runat="server">
        <div class="container-fluid ml-3" style="margin-top: 0,5%">
            <div class="row">
                <asp:Repeater ID="Rep_Libros" runat="server">
                    <ItemTemplate>
                        <div class="card" style="width: 17rem; height: auto; margin-right: 2%; margin-left: 2%; margin-top: 1%;">
                            <img src="<%# Eval(" Foto") %>" class="card-img-top" style="margin-top: 5%">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Titulo") %></h5>
                                <p class="card-text">Autor: <%# Eval("Autor") %></p>
                                <p class="card-text">Fecha de publicacion: <%# Eval("Fecha_de_publicacion") %></p>
                                <p class="card-text">ISBN: <%# Eval("Codigo") %></p>
                                <strong class="card-text">Precio: ₡<%# Eval("Precio") %> / u</strong>
                                <a style="float: left; margin-top: 10%" href="Mi_Carrito.aspx?Codigo=<%# Eval("ISBN") %>" class="btn btn-info">Añadir a mi carrito</a>
                                <a style="float: left; margin-top: 10%; margin-left: 3%" href="Mis_Favoritos.aspx?Codigo=<%# Eval("ISBN") %>" class="btn btn-outline-info"><span>&#128153;</span></a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <br />
        <br />
        <br />
        <div class="offcanvas offcanvas-end" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasScrollingLabel">
            <div class="offcanvas-header primary-color">
                <img src="../Assets/Imagenes/logo.png"; style="width:90%" />
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
                            <img src="https://cdn.pixabay.com/photo/2019/08/11/18/59/icon-4399701_960_720.png" style="width: 100px; margin-top: -65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3" />
                            <h5 class="card-title">
                                <label id="lblName" runat="server"></label>
                            </h5>
                            <p class="text-secondary mb-1">Bienvenido a la Libreria Internacional</p>
                            <p class="text-muted font-size-sm">Estamos para Servirle</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

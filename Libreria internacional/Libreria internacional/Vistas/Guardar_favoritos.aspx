<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guardar_favoritos.aspx.cs" Inherits="Libreria_internacional.Vistas.Guardar_favoritos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>

    <title></title>
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

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand" href="Principal.aspx">Libreria Internacional</a>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Contactenos</a>
                    </li>
                    <li class="nav-item" id="Favoritos" runat="server">
                        <a class="nav-link active" href="Mis_Favoritos.aspx">Mis Favoritos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br />
    <br />
    <div id="divAlert" hidden="hidden" role="alert" runat="server">
        <label id="lblAlert" runat="server"></label>
    </div>
    <form id="form1" runat="server">
        <div class="container-fluid ml-3" style="margin-top: 3%">
            <div class="row">
                <asp:Repeater ID="Rep_Carrito" runat="server">
                    <ItemTemplate>
                        <div class="card" style="max-width: 20%; height: 5%; margin-right: 2%; margin-left: 2%">
                            <img src="<%# Eval("Foto") %>" class="card-img-top" style="margin-top: 3%" />
                            <div class="card-body">

                                <h5 class="card-title"><%# Eval("Titulo") %></h5>
                                <p class="card-text">Autor: <%# Eval("Autor") %></p>
                                <p class="card-text">Fecha de publicacion: <%# Eval("Fecha_de_publicacion") %></p>
                                <strong class="card-text">Precio: ₡<%# Eval("Precio") %> / p</strong>&nbsp;&nbsp;&nbsp;
                                 
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="row mb-2" style="margin-left: 0.7%">
                    <div class="col mb-2">
                        <asp:Button ID="btnGuardarFavorito" runat="server" Text="Guardar Favorito" PostBack="false" class="btn btn-info" OnClick="Btn_Guardar_Favorito_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

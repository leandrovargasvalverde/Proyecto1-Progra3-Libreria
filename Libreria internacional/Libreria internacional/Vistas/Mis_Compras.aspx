<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mis_Compras.aspx.cs" Inherits="Libreria_internacional.Vistas.Mis_Compras" %>

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
    <style>
        body {
            background-size: 20%;
            background-image: url("https://previews.123rf.com/images/zinako/zinako1708/zinako170801291/85308977-fun-seamless-pattern-with-cartoon-books-can-be-used-for-wallpaper-pattern-fills-greeting-cards-webpa.jpg");
            width: 100vw;
            height: 100vh;
            position: absolute;
        }
    </style>
    <form id="form1" runat="server">
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

                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <div class="container-fluid ml-3" style="margin-top: 2%">
            <div class="row">
                <asp:Repeater ID="Rep_Compras" runat="server">
                    <ItemTemplate>
                        <div class="card mb-3" style="max-width: 45%; max-height: 45%; margin-right: 1%; margin-left:1%">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img style="margin-top: 4%" src=" <%# Eval("Foto") %>" class="img-fluid rounded-start">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                    º   º
                                        <h5 class="card-title" style="font-size: medium">Titulo:  <%# Eval("Titulo") %></h5>
                                        <p style="font-size: small" class="card-text">Precio por unidad:  ₡<%# Eval("Monto_Unidad") %></p>
                                        <p style="font-size: small" class="card-text">Cantidad de libros:  <%# Eval("Cantidad_libros") %></p>
                                        <p style="font-size: small" class="card-text">Fecha de la compra:  <%# Eval("Fecha_compra") %></p>
                                        <p style="font-size: small" class="card-text">Fecha de llegada de la compra:  <%# Eval("Fecha_llegada_compra") %></p>
                                        <p style="font-size: small" class="card-text">Monto Con IVA:  ₡<%# Eval("Monto_con_IVA") %></p>
                                        <p style="font-size: small" class="card-text">Monto Con IVA:  ₡<%# Eval("Monto_sin_IVA") %></p>
                                        <p style="font-size: small" class="card-text">Monto total:  ₡<%# Eval("Monto_final") %></p>
                                        <hr />
                                        <h5 class="card-title" style="font-size: medium">Datos de la compra: </h5>
                                        <p style="font-size: small" class="card-text">Cliente:  <%# Eval("Nombre") %></p>
                                        <p style="font-size: small" class="card-text">Pais:  <%# Eval("Pais") %></p>
                                        <p style="font-size: small" class="card-text">Estado:  <%# Eval("Estado") %></p>
                                        <p style="font-size: small" class="card-text">Direccion de entrega:  <%# Eval("Direccion_de_entrega") %></p>
                                        <p style="font-size: small" class="card-text">Codigo postal:  <%# Eval("Codigo_postal") %></p>
                                        <a href="Servicio_eliminar_compra.aspx?ID=<%# Eval("ID") %>">Cancelar</a>

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

</html>

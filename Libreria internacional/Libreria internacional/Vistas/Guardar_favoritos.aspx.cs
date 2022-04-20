using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using controlador = Libreria_internacional.Controladores;
using modelo = Libreria_internacional.Modelos;

namespace Libreria_internacional.Vistas
{
    public partial class Guardar_favoritos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((Modelos.Modelo_Usuarios)Session["Login"] != null)
            {
                if (!IsPostBack)
                {


                    Int16 Codigo = Convert.ToInt16(Request.QueryString["Codigo"]);
                    controlador.Controlador_libros Libros = new controlador.Controlador_libros();
                    List<modelo.Modelo_libros> lista_libros = Libros.Obtener_libros(Codigo);
                    Rep_Carrito.DataSource = lista_libros;
                    Rep_Carrito.DataBind();
                }

            }
            else
            {
                Response.Redirect("Principal.aspx?session=false");
            }

        }
    }
}
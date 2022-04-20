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
        protected void Btn_Guardar_Favorito_Click(object sender, EventArgs e)
        {
            try
            {

                Int16 Codigo = Convert.ToInt16(Request.QueryString["Codigo"]);
                btnGuardarFavorito.Attributes.Add("onclick", "return false");
                Int16 Codigo_libros = Convert.ToInt16(Request.QueryString["Codigo"]);
                modelo.Modelo_Usuarios Usuario = (modelo.Modelo_Usuarios)Session["Login"];
                controlador.Controlador_libros Libros = new controlador.Controlador_libros();
                List<modelo.Modelo_libros> lista_libros = Libros.Obtener_libros(Codigo);

                modelo.Modelo_Favoritos Favoritos = new modelo.Modelo_Favoritos()
                {
                    ISBN = Codigo_libros

                };
                controlador.Controlador_Favoritos favoritos = new controlador.Controlador_Favoritos();
                favoritos.Guardar_Favoritos(Favoritos);
                MostrarAlert("Favorito Agredado", "info");
            }
            catch
            {
                MostrarAlert("Error al agregar el Favorito", "danger");

            }

        }

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
        public void MostrarAlert(string mensaje, string tipoMensaje)
        {
            divAlert.Attributes.Add("class", "alert alert-" + tipoMensaje);
            divAlert.Attributes.Remove("hidden");
            lblAlert.InnerText = mensaje;
        }
    }
}
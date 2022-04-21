using controlador = Libreria_internacional.Controladores;
using modelo = Libreria_internacional.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controlador = Libreria_internacional.Controladores;

namespace Libreria_internacional.Vistas
{
    public partial class Mis_Favoritos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Modelos.Modelo_Usuarios)Session["Login"] != null)
            {
                if (!IsPostBack)
                {
                    Controladores.Controlador_Favoritos favoritos = new Controladores.Controlador_Favoritos();
                    Modelos.Modelo_Usuarios Usuario = (Modelos.Modelo_Usuarios)Session["Login"];
                    Rep_Favoritos.DataSource = favoritos.obtenerfavoritos(Usuario);
                    Rep_Favoritos.DataBind();
                }
            }
            else
            {
                Response.Redirect("Principal.aspx?session=false");
            }

        }

        protected void Btn_Guardar_Favorito_Click(object sender, EventArgs e)
        {
            try
            {
                Int16 Codigo_libros = Convert.ToInt16(Request.QueryString["Codigo"]);
                modelo.Modelo_Usuarios Usuario = (modelo.Modelo_Usuarios)Session["Login"];

                modelo.Modelo_Favoritos favoritos = new modelo.Modelo_Favoritos()
                {

                };
                controlador.Controlador_Favoritos favoritos1 = new controlador.Controlador_Favoritos();
                favoritos1.Guardar_Favoritos(favoritos);
                MostrarAlert("Libro Guardado como Favorito", "info");

            }
            catch
            {
                MostrarAlert("Error al guardar el libro como favorito", "danger");

            }
        }
        protected void Btn_VaciarFavoritos(object sender, EventArgs e)
        {
            Controlador.Controlador_Favoritos controladorFavoritos = new Controlador.Controlador_Favoritos();

            controladorFavoritos.Vaciar_Favoritos();
            Rep_Favoritos.DataBind();
            MostrarAlert("Se vacio la lista de Favoritos", "info");
        }

        public void MostrarAlert(string mensaje, string tipoMensaje)
        {
            divAlert.Attributes.Add("class", "alert alert-" + tipoMensaje);
            divAlert.Attributes.Remove("hidden");
            lblAlert.InnerText = mensaje;
        }
    }
}
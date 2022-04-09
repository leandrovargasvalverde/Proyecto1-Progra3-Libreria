using controlador = Libreria_internacional.Controladores;
using modelo = Libreria_internacional.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                    Rep_Favoritos.DataSource = favoritos.obtenercompras(Usuario);
                    Rep_Favoritos.DataBind();
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controlador = Libreria_internacional.Controladores;

namespace Libreria_internacional.Vistas
{
    public partial class Mis_Compras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Modelos.Modelo_Usuarios)Session["Login"] != null)
            {
                if (!IsPostBack)
                {

                    Controladores.Controlador_Compras compra = new Controladores.Controlador_Compras();
                    Modelos.Modelo_Usuarios Usuario = (Modelos.Modelo_Usuarios)Session["Login"];
                    Rep_Compras.DataSource = compra.obtenercompras(Usuario);
                    Rep_Compras.DataBind();

                }
            }

        }
        protected void Btn_VaciarCarrito(object sender, EventArgs e)
        {
            Controlador.Controlador_Compras controladorCompras = new Controlador.Controlador_Compras();

            controladorCompras.Vaciar_Carrito();
            Rep_Compras.DataBind();
            MostrarAlert("Se vacio el carrito de Compras", "danger");
        }
        public void MostrarAlert(string mensaje, string tipoMensaje)
        {
            divAlert.Attributes.Add("class", "alert alert-" + tipoMensaje);
            divAlert.Attributes.Remove("hidden");
            lblAlert.InnerText = mensaje;
        }
    }
}
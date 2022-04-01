using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria_internacional.Vistas
{
    public partial class Mis_Compras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Modelos.Modelo_Usuarios)Session["Login"] != null)
            {
                Controladores.Controlador_Compras compra = new Controladores.Controlador_Compras();
                Modelos.Modelo_Usuarios Usuario = (Modelos.Modelo_Usuarios)Session["Login"];
                Rep_Compras.DataSource = compra.obtenercompras(Usuario);
                Rep_Compras.DataBind();
            }

        }
    }
}
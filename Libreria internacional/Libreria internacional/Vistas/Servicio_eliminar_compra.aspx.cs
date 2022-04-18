using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria_internacional.Vistas
{
    public partial class Servicio_eliminar_compra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Convert.ToInt16(Request.QueryString["ID"]);

            Controladores.Controlador_Compras Compras = new Controladores.Controlador_Compras();

            Compras.Cancelar_Compras(ID);

            Response.Redirect("Mis_Compras.aspx");

        }
    }
}
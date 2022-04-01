using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria_internacional.Vistas
{
    public partial class Mi_Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Modelos.Modelo_Usuarios)Session["Login"] != null)
            {
                if (!IsPostBack)
                {
                            Int16 Codigo = Convert.ToInt16(Request.QueryString["Codigo"]);
                    Controladores.Controlador_libros Libros =new Controladores.Controlador_libros();
                    List<Modelos.Modelo_libros> lista_libros = Libros.Obtener_libros(Codigo);


                    lblMontoNoche.InnerText = lista_libros[0].Precio.ToString();
                 

                    // lblCantidadNoches.InnerText = "1";//

                    lblMontoconIVA.InnerText = (lista_libros[0].Precio * 1).ToString();
                    lblMontoHospedajeFinal.InnerText = ((lista_libros[0].Precio * 1)).ToString();
                    lblMontosinIVA.InnerText = (lista_libros[0].Precio * 1).ToString();
                    dtLlegada.Value = DateTime.Today.ToString("yyyy-MM-dd");
                    dtSalida.Value = DateTime.Now.AddDays(30).ToString("yyyy-MM-dd");
                    intAdultos.Value = "1";
                 



                    Rep_Carrito.DataSource = lista_libros;
                    Rep_Carrito.DataBind();
                }
            }
            else
            {
                Response.Redirect("Destinos.aspx?session=false");
            }

        }
    }
}
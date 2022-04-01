using controlador=Libreria_internacional.Controladores;
using modelo= Libreria_internacional.Modelos;
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
                    controlador.Controlador_libros Libros = new controlador.Controlador_libros();
                    List<modelo.Modelo_libros> lista_libros = Libros.Obtener_libros(Codigo);


                    lblMontoUnidad.InnerText = lista_libros[0].Precio.ToString();
                 
                    lblMontoconIVA.InnerText = (lista_libros[0].Precio * 1).ToString();
                    lblMontoFinal.InnerText = (lista_libros[0].Precio * 1).ToString();
                    lblMontosinIVA.InnerText = (lista_libros[0].Precio * 1).ToString();
                    dt_Dia_Compra.Value = DateTime.Today.ToString("yyyy-MM-dd");
                    dt_Llegad_Compra.Value = DateTime.Now.AddDays(30).ToString("yyyy-MM-dd");
                    intLibros.Value = "1";
                 
                    Rep_Carrito.DataSource = lista_libros;
                    Rep_Carrito.DataBind();
                }
            }
            else
            {
                Response.Redirect("Principal.aspx?session=false");
            }

        }
        protected void Btn_Guardar_Compra_Click(object sender, EventArgs e)
        {
            try
            { 
                Int16 Codigo_libros = Convert.ToInt16(Request.QueryString["Codigo"]);
                modelo.Modelo_Usuarios Usuario = (modelo.Modelo_Usuarios)Session["Login"];
                
                modelo.Modelo_Compras Compras = new modelo.Modelo_Compras()
                {
                    ID = Codigo_libros,
                    Correo = Usuario.Email,
                    Cantidad_libros = Convert.ToInt16(intLibros.Value),
                    Fecha_compra = Convert.ToDateTime(dt_Dia_Compra.Value),
                    Fecha_llegada_compra = Convert.ToDateTime(dt_Llegad_Compra.Value),
                    Monto_con_IVA = Convert.ToInt32(lblMontoconIVA.InnerText),
                    Monto_sin_IVA = Convert.ToInt32(lblMontosinIVA.InnerText),
                    Monto_final = Convert.ToInt32(lblMontoFinal.InnerText),
                    Monto_Unidad = Convert.ToInt32(lblMontoUnidad.InnerText),
                    //Foto = 
                };
                controlador.Controlador_Compras compras = new controlador.Controlador_Compras();
                compras.Guardar_Compras(Compras);
                MostrarAlert("Compra realizada con éxito", "info");

            }
            catch
            {
                MostrarAlert("Error al realizar la compra", "danger");

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
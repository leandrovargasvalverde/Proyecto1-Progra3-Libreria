using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Libreria_internacional.Modelos;
using Controlador = Libreria_internacional.Controladores;

namespace Libreria_internacional.Vistas
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string session = Request.QueryString["session"];

            if (session == "false")
            {
                LoginInactivo();
            }

            if ((Modelo_Usuarios)Session["Login"] != null)
            {
                LoginActivo();
            }
            Controlador.Controlador_libros controladorLibros = new Controlador.Controlador_libros();

            Rep_Libros.DataSource = controladorLibros.Obtener_libros();
            Rep_Libros.DataBind();
        }
    
        protected void Login_Click(object sender, EventArgs e)
        {

            Controlador.Controlador_Usuario controladorusuario = new Controlador.Controlador_Usuario();
            Modelo_Usuarios usu = new Modelo_Usuarios()
            {
                Email = txtEmail.Value,
                Password = txtPassword.Value
            };
            if (controladorusuario.Login(usu))
            {
                //valido
                Session["Login"] = usu;
                LoginActivo();

            }
            else
            {
                LoginInactivo();
            }
        


        }
        protected void CerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Login"] = null;
            MostrarAlert("Gracias por su visita");
            MostrarCardLogin();
            CerrarSesion.Attributes.Add("hidden", "hidden");
        }
        public void LoginActivo()
        {
            Modelo_Usuarios usuario = (Modelo_Usuarios)Session["Login"];

            OcultarCardLogin();
            MostrarAlert("Bienvenido " + usuario.Email);
            lblName.InnerText = usuario.Email;
            CerrarSesion.Attributes.Remove("hidden");
            Reservaciones.Attributes.Remove("hidden");
            Favoritos.Attributes.Remove("hidden");

        }
        public void MostrarCardLogin()
        {
            cardLogin.Attributes.Remove("hidden");
            cardUser.Attributes.Add("hidden", "hidden");
        }

        public void OcultarCardLogin()
        {
            cardUser.Attributes.Remove("hidden");
            cardLogin.Attributes.Add("hidden", "hidden");
        }

        public void LoginInactivo()
        {
            //login invalido
            txtEmail.Attributes.Add("class", "form-control is-invalid");
            txtPassword.Attributes.Add("class", "form-control is-invalid");
            divAlert.Attributes.Add("class", "alert alert-danger");
            divAlert.Attributes.Remove("hidden");
            lblAlert.InnerText = "Usuario no registrado";
        }

        public void MostrarAlert(string mensaje)
        {
            divAlert.Attributes.Add("class", "alert alert-info");
            divAlert.Attributes.Remove("hidden");
            lblAlert.InnerText = mensaje;
        }

    }
    
}
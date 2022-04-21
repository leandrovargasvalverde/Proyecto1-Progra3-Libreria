using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria_internacional.Modelos
{
    public class Modelo_Usuarios
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Nombre { get; set; }
        public string Foto { get; set; }
    }
}
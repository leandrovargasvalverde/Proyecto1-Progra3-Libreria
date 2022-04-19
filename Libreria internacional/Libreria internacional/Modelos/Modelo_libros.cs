using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria_internacional.Modelos
{
    public class Modelo_libros
    {
        public int ISBN { get; set; }
        public string Foto { get; set; }
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public string Fecha_de_publicacion { get; set; }
        public string Codigo { get; set; }
        public double Precio { get; set; }
    }
}
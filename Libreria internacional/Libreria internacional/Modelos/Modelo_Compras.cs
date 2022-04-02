using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria_internacional.Modelos
{
    public class Modelo_Compras:Modelo_libros
    {
       // public string Foto { get; set; }
        public int ID { get; set; }
        public string Correo { get; set; }
        public int Cantidad_libros { get; set; }
        public string Fecha_compra { get; set; }
        public string Fecha_llegada_compra { get; set; }
        public int Monto_con_IVA { get; set; }
        public int Monto_sin_IVA { get; set; }
        public int Monto_final { get; set; }
        public int Monto_Unidad { get; set; }
    }
}
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
        public string Nombre { get; set; }
        public string Pais { get; set; }
        public string Estado { get; set; }
        public string Direccion_de_entrega { get; set; }
        public string Codigo_postal { get; set; }
        public string Numero_de_tarjeta { get; set; }
        public string Fecha_de_expiracion { get; set; }
        public int Codigo_de_seguridad { get; set; }



    }
}
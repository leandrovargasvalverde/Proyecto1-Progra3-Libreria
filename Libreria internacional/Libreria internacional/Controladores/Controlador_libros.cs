using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Libreria_internacional.Modelos;

namespace Libreria_internacional.Controladores
{
    public class Controlador_libros
    {
        public List<Modelo_libros> Obtener_libros()
        {
            List<Modelo_libros> Lista_libros = new List<Modelo_libros>();

            DataTable dt = Conexion_base.fillDTStoreProcedure("spObtener_libros", null);

            foreach (DataRow dr in dt.Rows)
            {
                Modelo_libros Libro = new Modelo_libros()
                {
                    ISBN = Convert.ToInt16(dr["ISBN"]),
                    Foto = dr["Foto"].ToString(),
                    Autor = dr["Autor"].ToString(),
                    Fecha_de_publicacion = dr["Fecha_de_publicacion"].ToString(),
                    Codigo = dr["Codigo"].ToString(),
                    Precio = Convert.ToDouble(dr["Precio"]),
                    Titulo = dr["Titulo"].ToString(),
                };

                Lista_libros.Add(Libro);
            }

            return Lista_libros;
        }
        public List<Modelo_libros> Obtener_libros(int Codigo)
        {
            List<Modelo_libros> Libros = Obtener_libros();

            foreach (Modelo_libros lib in Libros.Where(d => d.ISBN.Equals(Codigo)))
            {
                Libros.Clear();
                Libros.Add(lib);

                return Libros;
            }
            return null;
        }
    }
}
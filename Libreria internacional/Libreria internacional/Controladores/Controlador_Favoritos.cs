using Libreria_internacional.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Libreria_internacional.Controladores
{
    public class Controlador_Favoritos
    {
        public void Guardar_Favoritos(Modelo_Favoritos favoritos)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@ISBN", favoritos.ISBN));

            Conexion_base.executeQuery("spGuardar_Favoritos", param);
        }
        public List<Modelo_Favoritos> obtenerfavoritos(Modelo_Usuarios usuario)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            List<Modelo_Favoritos> Lista_Favoritos = new List<Modelo_Favoritos>();

            DataTable dt = Conexion_base.fillDTStoreProcedure("spObtener_Favoritos", param);
            foreach (DataRow dr in dt.Rows)
            {
                Modelo_Favoritos Favorito = new Modelo_Favoritos()
                {
                    Foto = dr["Foto"].ToString(),
                    Autor = dr["Autor"].ToString(),
                    Fecha_de_publicacion = dr["Fecha_de_publicacion"].ToString(),
                    Codigo = dr["Codigo"].ToString(),
                    Precio = Convert.ToDouble(dr["Precio"]),
                    Titulo = dr["Titulo"].ToString(),
                };

                Lista_Favoritos.Add(Favorito);
            }

            return Lista_Favoritos;

        }
    }
}
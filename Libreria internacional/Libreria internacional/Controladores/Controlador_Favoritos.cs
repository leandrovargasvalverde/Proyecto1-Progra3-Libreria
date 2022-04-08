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
        public void Guardar_Compras(Modelo_Favoritos favoritos)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@Codigo_Libro", favoritos.ID));
            param.Add(new SqlParameter("@Correo", favoritos.Correo));
            param.Add(new SqlParameter("@Cantidad_libros", favoritos.Cantidad_libros));
            param.Add(new SqlParameter("@Fecha_compra", favoritos.Fecha_compra));
            param.Add(new SqlParameter("@Fecha_llegada_compra", favoritos.Fecha_llegada_compra));
            param.Add(new SqlParameter("@Monto_con_IVA", favoritos.Monto_con_IVA));
            param.Add(new SqlParameter("@Monto_sin_IVA", favoritos.Monto_sin_IVA));
            param.Add(new SqlParameter("@Monto_final", favoritos.Monto_final));
            param.Add(new SqlParameter("@Monto_Unidad", favoritos.Monto_Unidad));



            Conexion_base.executeQuery("spGuardar_Compras", param);
        }
        public List<Modelo_Favoritos> obtenercompras(Modelo_Usuarios usuario)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            List<Modelo_Favoritos> Lista_Favoritos = new List<Modelo_Favoritos>();


            param.Add(new SqlParameter("@correo", usuario.Email));

            DataTable dt = Conexion_base.fillDTStoreProcedure("spObtener_Compras", param);
            foreach (DataRow dr in dt.Rows)
            {
                Modelo_Favoritos Favorito = new Modelo_Favoritos()
                {
                    ID = Convert.ToInt16(dr["ID"]),
                    Correo = dr["Correo"].ToString(),
                    Cantidad_libros = Convert.ToInt16(dr["Cantidad_libros"]),
                    Fecha_compra = Convert.ToDateTime(dr["Fecha_compra"]).ToShortDateString(),
                    Fecha_llegada_compra = Convert.ToDateTime(dr["Fecha_llegada_compra"]).ToShortDateString(),
                    Monto_con_IVA = Convert.ToInt32(dr["Monto_con_IVA"]),
                    Monto_final = Convert.ToInt32(dr["Monto_sin_IVA"]),
                    Monto_sin_IVA = Convert.ToInt32(dr["Monto_final"]),
                    Monto_Unidad = Convert.ToInt32(dr["Monto_Unidad"]),
                    Foto = dr["Foto"].ToString(),
                    Titulo = dr["Titulo"].ToString(),


                };




                Lista_Favoritos.Add(Favorito);
            }

            return Lista_Favoritos;

        }
    }
}
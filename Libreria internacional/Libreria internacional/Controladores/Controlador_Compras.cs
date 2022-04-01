﻿using Libreria_internacional.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Libreria_internacional.Controladores
{
    public class Controlador_Compras
    {
        public void Guardar_Compras(Modelo_Compras compra)
        {
            List<SqlParameter> param = new List<SqlParameter>();
           // param.Add(new SqlParameter("@Foto", compra.Foto));
            param.Add(new SqlParameter("@Codigo_Libro", compra.ID));
            param.Add(new SqlParameter("@Correo", compra.Correo));
            param.Add(new SqlParameter("@Cantidad_libros", compra.Cantidad_libros));
            param.Add(new SqlParameter("@Fecha_compra", compra.Fecha_compra));
            param.Add(new SqlParameter("@Fecha_llegada_compra", compra.Fecha_llegada_compra));
            param.Add(new SqlParameter("@Monto_con_IVA", compra.Monto_con_IVA));
            param.Add(new SqlParameter("@Monto_sin_IVA", compra.Monto_sin_IVA));
            param.Add(new SqlParameter("@Monto_final", compra.Monto_final));
            param.Add(new SqlParameter("@Monto_Unidad", compra.Monto_Unidad));



            Conexion_base.executeQuery("spGuardar_Compras", param);
        }
        public List<Modelo_Compras> obtenercompras(Modelo_Usuarios usuario)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            List<Modelo_Compras> Lista_Compra = new List<Modelo_Compras>();


            param.Add(new SqlParameter("@correo", usuario.Email));

            DataTable dt = Conexion_base.fillDTStoreProcedure("spObtener_Compras", param);
            foreach (DataRow dr in dt.Rows)
            {
                Modelo_Compras Compras = new Modelo_Compras()
                {
                    ID = Convert.ToInt16(dr["ID"]) ,
                    Correo = dr["Correo"].ToString(),
                    Cantidad_libros = Convert.ToInt16(dr["Cantidad_libros"]),
                    Fecha_compra = Convert.ToDateTime(dr["Fecha_compra"]),
                    Fecha_llegada_compra =Convert.ToDateTime(dr["Fecha_llegada_compra"]),
                    Monto_con_IVA = Convert.ToInt32(dr["Monto_con_IVA"]),
                    Monto_final = Convert.ToInt32(dr["Monto_sin_IVA"]),
                    Monto_sin_IVA = Convert.ToInt32(dr["Monto_final"]),
                    Monto_Unidad = Convert.ToInt32(dr["Monto_Unidad"]),
                    //Foto= dr ["Foto"].ToString(),
                 };
       
 
   

                Lista_Compra.Add(Compras);
            }

            return Lista_Compra;

        }
    }
}

       
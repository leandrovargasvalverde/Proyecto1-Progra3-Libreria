﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public static class Conexion_base
{
    // SERVIDOR LEANDRO = @"DESKTOP-RSJLV6Q";
    // SERVIDOR JUAN JOSE = @"DESKTOP-KP1HB7H";
    // SERVIDOR JOSE = @"DESKTOP-DLLS4QS";

    const string servidor = @"DESKTOP-KP1HB7H";
    const string baseDatos = "Base_Libros";
    const string strConexion = "Data Source=" + servidor + ";Initial Catalog=" + baseDatos + ";Integrated Security=True";

    //Para select 
    public static DataTable fillDTStoreProcedure(string procedure, List<SqlParameter> param)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(strConexion)) //Creacion del objeto que se conecta a SQL
            {
                conn.Open(); //Comando que abre la conexión a SQL
                SqlCommand cmd = new SqlCommand(); //Creando el objeto comando SQL
                cmd.CommandText = procedure; // Le digo al comando que es un Stored Procedure
                cmd.CommandType = CommandType.StoredProcedure; // Le digo al comando que es de tipo Stored Procedure
                cmd.Connection = conn; // Le digo al comando que su conexion es mi variable conn

                if (param != null)
                {
                    foreach (SqlParameter item in param)
                    {
                        cmd.Parameters.Add(item);
                    }
                }

                cmd.ExecuteNonQuery(); // Le digo al comando que se ejecute en el SQL
                SqlDataAdapter adapter = new SqlDataAdapter(cmd); //Adaptador que va a ir a entender que ejecuto el comando
                DataTable dt = new DataTable(); //Matriz donde voy a guardar los datos
                adapter.Fill(dt); //El adaptador llena la matriz con los datos que me devolvió el comando

                return dt; //Retorne los datos que contiene la matriz
            }
        }
        catch (Exception ex)
        {
            throw ex; //Devuelve un error
        }
    }
    public static void executeQuery(string procedure, List<SqlParameter> param)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(strConexion)) //Creacion del objeto que se conecta a SQL
            {
                conn.Open(); //Comando que abre la conexión a SQL
                SqlCommand cmd = new SqlCommand(); //Creando el objeto comando SQL
                cmd.CommandText = procedure; // Le digo al comando que es un Stored Procedure
                cmd.CommandType = CommandType.StoredProcedure; // Le digo al comando que es de tipo Stored Procedure
                cmd.Connection = conn; // Le digo al comando que su conexion es mi variable conn

                if (param != null)
                {
                    foreach (SqlParameter item in param)
                    {
                        cmd.Parameters.Add(item);
                    }
                }

                cmd.ExecuteNonQuery(); // Le digo al comando que se ejecute en el SQL                
            }
        }
        catch (Exception ex)
        {
            throw ex; //Devuelve un error
        }
    }
}
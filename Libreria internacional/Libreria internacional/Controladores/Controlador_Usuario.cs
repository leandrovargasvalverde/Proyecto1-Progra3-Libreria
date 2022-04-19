using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using Libreria_internacional.Modelos;

namespace Libreria_internacional.Controladores
{
    public class Controlador_Usuario
    {
        //Apikey Leandro: "AIzaSyAT2RiFOdxrH_4u6qxilYARXTXcXHmTrM0";
        //Apikey Juan Jose: "AIzaSyABqEs1pV-Jdgyio1SVy0yPo7tkFyOtnRo";
        //Apikey Jose: "AIzaSyBihpSV3YmGWIjLrbOzjEShaZfaA08Cr5M";

        const string firebaseUrl = "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=";
        const string apiKey = "AIzaSyAT2RiFOdxrH_4u6qxilYARXTXcXHmTrM0";

        public bool Login(Modelo_Usuarios usuario)
        {
            try
            {
                var request = (HttpWebRequest)WebRequest.Create(firebaseUrl + apiKey);
                var data = "email=" + usuario.Email + "&password=" + usuario.Password;
                var bytes = Encoding.ASCII.GetBytes(data);

                request.Method = "POST";
                request.ContentType = "application/x-www-form-urlencoded";
                request.ContentLength = bytes.Length;

                using (var stream = request.GetRequestStream())
                {
                    stream.Write(bytes, 0, bytes.Length);
                }

                var response = (HttpWebResponse)request.GetResponse();
                var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();

                if (responseString.Contains(usuario.Email))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SegundoParcial
{
    public class Archivo
    {


        public string Nombre {  get; set; }
        public string Ruta { get; set;}
        public Archivo(string nombre, string ruta)
        {
            Nombre = nombre;
            Ruta = ruta;
        }
    }
}
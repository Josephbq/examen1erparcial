using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Gasto
    {
        public int ID { get; set; }
        public DateTime Fecha { get; set; }
        public int Cantidad { get; set; }
        public int CategoriaID { get; set; }
        public int LugarID { get; set; }
        public int MonedaID { get; set; }
    }
}
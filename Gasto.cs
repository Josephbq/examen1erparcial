//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Gasto
    {
        public int ID { get; set; }
        public string Fecha { get; set; }
        public string Cantidad { get; set; }
        public string CategoriaID { get; set; }
        public string MonedaID { get; set; }
        public string LugarID { get; set; }
    
        public virtual Categoria Categoria { get; set; }
        public virtual Lugar Lugar { get; set; }
        public virtual Moneda Moneda { get; set; }
    }
}

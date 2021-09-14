using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace WebApplication1.Models
{
    public class DBEntities:DbContext
    {
        public DbSet<Moneda> Monedas { get; set; }
        public DbSet<Categorias> Categorria { get; set; }
        public DbSet<Gasto> Gastos { get; set; }
        public DbSet<Lugar> Lugars { get; set; }
    }
}
﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class quienlohaceEntities : DbContext
    {
        public quienlohaceEntities()
            : base("name=quienlohaceEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<area> area { get; set; }
        public virtual DbSet<asignacion> asignacion { get; set; }
        public virtual DbSet<calificacion> calificacion { get; set; }
        public virtual DbSet<datopersonal> datopersonal { get; set; }
        public virtual DbSet<habilidad> habilidad { get; set; }
        public virtual DbSet<rol> rol { get; set; }
        public virtual DbSet<subarea> subarea { get; set; }
        public virtual DbSet<tarea> tarea { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
        public virtual DbSet<estadoTarea> estadoTarea { get; set; }
        public virtual DbSet<estadoUsuario> estadoUsuario { get; set; }
    }
}

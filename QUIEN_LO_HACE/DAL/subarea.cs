//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class subarea
    {
        public subarea()
        {
            this.habilidad = new HashSet<habilidad>();
            this.tarea = new HashSet<tarea>();
        }
    
        public int id { get; set; }
        public string nombre { get; set; }
        public int idarea { get; set; }
    
        public virtual area area { get; set; }
        public virtual ICollection<habilidad> habilidad { get; set; }
        public virtual ICollection<tarea> tarea { get; set; }
    }
}

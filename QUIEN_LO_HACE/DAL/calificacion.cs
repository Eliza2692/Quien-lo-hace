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
    
    public partial class calificacion
    {
        public int id { get; set; }
        public int idtarea { get; set; }
        public System.DateTime fechacalificacion { get; set; }
        public Nullable<int> valor { get; set; }
    
        public virtual tarea tarea { get; set; }
    }
}
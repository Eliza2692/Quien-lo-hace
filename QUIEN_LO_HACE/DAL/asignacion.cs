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
    
    public partial class asignacion
    {
        public int id { get; set; }
        public System.DateTime fechaasignacion { get; set; }
        public int idexperto { get; set; }
        public int idtarea { get; set; }
        public decimal valorpactado { get; set; }
        public string observaciones { get; set; }
    
        public virtual tarea tarea { get; set; }
    }
}
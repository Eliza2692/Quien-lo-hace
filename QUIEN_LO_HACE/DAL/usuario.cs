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
    
    public partial class usuario
    {
        public usuario()
        {
            this.datopersonal = new HashSet<datopersonal>();
        }
    
        public int id { get; set; }
        public string usuario1 { get; set; }
        public string password { get; set; }
        public int idrol { get; set; }
        public int idestado { get; set; }
    
        public virtual ICollection<datopersonal> datopersonal { get; set; }
        public virtual rol rol { get; set; }
        public virtual estadoUsuario estadoUsuario { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class catMarcas
    {
        public catMarcas()
        {
            this.catArticulos = new HashSet<catArticulos>();
        }
    
        public int idMarca { get; set; }
        public string nombreMarca { get; set; }
    
        public virtual ICollection<catArticulos> catArticulos { get; set; }
    }
}

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
    
    public partial class catArticulos
    {
        public catArticulos()
        {
            this.tblCompras = new HashSet<tblCompras>();
            this.tblVentas = new HashSet<tblVentas>();
        }
    
        public int idArticulo { get; set; }
        public string nombreArticulo { get; set; }
        public int idMarca { get; set; }
        public string categoria { get; set; }
        public int idProveedores { get; set; }
    
        public virtual catMarcas catMarcas { get; set; }
        public virtual catProveedores catProveedores { get; set; }
        public virtual ICollection<tblCompras> tblCompras { get; set; }
        public virtual ICollection<tblVentas> tblVentas { get; set; }
    }
}

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
    
    public partial class tblClientes
    {
        public tblClientes()
        {
            this.tblVentas = new HashSet<tblVentas>();
        }
    
        public int idCliente { get; set; }
        public string numCedula { get; set; }
        public string primerNombre { get; set; }
        public string primerApellido { get; set; }
    
        public virtual ICollection<tblVentas> tblVentas { get; set; }
    }
}

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
    
    public partial class tblCompras
    {
        public int idCompra { get; set; }
        public System.DateTime fecha { get; set; }
        public int idProveedor { get; set; }
        public int idCliente { get; set; }
        public int idEmpleado { get; set; }
        public decimal cantidad { get; set; }
        public decimal precio { get; set; }
        public decimal iva { get; set; }
        public decimal total { get; set; }
        public string articulo { get; set; }
    
        public virtual catEmpleados catEmpleados { get; set; }
        public virtual catProveedores catProveedores { get; set; }
    }
}

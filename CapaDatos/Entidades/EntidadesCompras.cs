using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class EntidadesCompras
    {
        public int idCompra { get; set; }
        public System.DateTime fecha { get; set; }
        public int idProveedor { get; set; }
        public int idCliente { get; set; }
        public int idEmpleado { get; set; }
        public decimal cantidad { get; set; }
        public decimal precio { get; set; }
        public decimal iva { get; set; }
        public Nullable<decimal> total { get; set; }
    }
}

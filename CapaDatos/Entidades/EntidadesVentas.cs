using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
   public class EntidadesVentas
    {
        public int idVentas { get; set; }
        public System.DateTime fecha { get; set; }
        public int idCliente { get; set; }
        public int idEmpleado { get; set; }
        public decimal cantidad { get; set; }
        public decimal precio { get; set; }
        public decimal iva { get; set; }
        public decimal total { get; set; }
        public int? idArticulo { get; set; }

        public virtual catEmpleados catEmpleados { get; set; }
        public virtual tblClientes tblClientes { get; set; }
        public virtual catArticulos catArticulos { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class EntidadesEmpleados
    {
        public int idEmpleado { get; set; }
        public string numCedula { get; set; }
        public string primerNombre { get; set; }
        public string primerApellido { get; set; }
        public System.DateTime? fechaEntrada { get; set; }
    }
}

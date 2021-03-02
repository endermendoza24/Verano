using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodosClientes
    {
        AlmacenTecnoEntities db = new AlmacenTecnoEntities();

        public bool insertarCliente(tblClientes entidad)
        {
            db.insertarCliente(entidad.numCedula, entidad.primerNombre, entidad.primerApellido);
            db.SaveChanges();
            return true;
        }
    }
}

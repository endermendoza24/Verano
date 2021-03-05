using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
   public class MetodosVentas
    {
        AlmacenTecnoEntities db = new AlmacenTecnoEntities();

        public bool insertarVenta(tblVentas entidad)
        {
            db.insertarVenta(entidad.fecha, entidad.idCliente, entidad.idEmpleado, entidad.idArticulo, entidad.cantidad,
                entidad.precio, entidad.iva, entidad.total);
            db.SaveChanges();
            return true;
        }
    }
}

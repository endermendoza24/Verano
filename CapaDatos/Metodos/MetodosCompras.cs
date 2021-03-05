using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
   public class MetodosCompras
    {
        AlmacenTecnoEntities db = new AlmacenTecnoEntities(); //  instancia de la bd

        public bool insertarCompra(tblCompras entidad)
        {
            db.insertarCompra(entidad.fecha, entidad.idProveedor, entidad.idEmpleado, entidad.idArticulo,
                entidad.cantidad, entidad.precio, entidad.iva, entidad.total);  //  se invoca al procedimeinto almacenado y se le pasa por parametros estos elementos
            db.SaveChanges();
            return true;
        }
    }
}

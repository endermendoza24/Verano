using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodosProveedores
    {
        AlmacenTecnoEntities bd = new AlmacenTecnoEntities();

        public bool insertarProveedor(catProveedores entidad)
        {
            bd.insertarProveedor(entidad.nombreProveedor, entidad.correo, entidad.telefono, entidad.ciudad); //  se llama al procedimeinto almacenado de insertar empleado y se le pasan sus respectivos parametros
            bd.SaveChanges();
            return true;
        }
    }
}

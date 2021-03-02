using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
   public class MetodoArticulo
    {
        AlmacenTecnoEntities baseDatos = new AlmacenTecnoEntities();

        public bool insertarArticulo(catArticulos entidad)
        {
            baseDatos.agregarArticulo(entidad.nombreArticulo, entidad.categoria, entidad.idProveedores, entidad.idMarca);
            baseDatos.SaveChanges();
            return true;
        }
    }
}

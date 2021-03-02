using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodoEmpleados
    {
        AlmacenTecnoEntities baseDatos = new AlmacenTecnoEntities();

        public bool insertarEmpleado(catEmpleados entidades)
        {
            baseDatos.insertarEmpleado(entidades.numCedula, entidades.primerNombre, entidades.primerApellido, entidades.fechaEntrada);
            baseDatos.SaveChanges();
           return true;
        }
    }
}

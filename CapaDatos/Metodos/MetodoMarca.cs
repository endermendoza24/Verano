using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodoMarca
    {
        AlmacenTecnoEntities baseDato = new AlmacenTecnoEntities();

        public bool insertarMarca(catMarcas entidades)
        {
            baseDato.agregarMarca(entidades.nombreMarca);
            baseDato.SaveChanges();
            return true;
        }

        public bool editarMarca(catMarcas entidades)
        {
            baseDato.editarMarcas(entidades.idMarca, entidades.nombreMarca);
            baseDato.SaveChanges();
            return true;
        }
    }
}

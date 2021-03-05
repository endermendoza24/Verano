using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocios
{
    public class MetodosNegocio
    {
        MetodoMarca metodo = new MetodoMarca();
        MetodoArticulo metodArt = new MetodoArticulo();
        MetodoEmpleados metodoEm = new MetodoEmpleados();
        MetodosProveedores metodoPr = new MetodosProveedores();
        MetodosClientes metodoCl = new MetodosClientes();
        MetodosVentas metodoVenta = new MetodosVentas();
        MetodosCompras metodoCompra = new MetodosCompras();


        public bool insertarMarca(EntidadesMarcas entidad)
        {
            catMarcas tabla = new catMarcas();
            tabla.nombreMarca = entidad.nombreMarca;
            return metodo.insertarMarca(tabla);
        }
        public bool insertarEmpleado(EntidadesEmpleados entidad)
        {
            catEmpleados tabla = new catEmpleados();
            tabla.numCedula = entidad.numCedula;
            tabla.primerNombre = entidad.primerNombre;
            tabla.primerApellido = entidad.primerApellido;
            tabla.fechaEntrada = entidad.fechaEntrada;
            return metodoEm.insertarEmpleado(tabla);
        }

        public bool editarMarca(EntidadesMarcas entidad)
        {
            catMarcas tabla = new catMarcas();
            tabla.nombreMarca = entidad.nombreMarca;
            return metodo.editarMarca(tabla);
        }

        public bool insertarArticulo(EntidadesArticulos entidad)
        {
            catArticulos tabla = new catArticulos();
            tabla.nombreArticulo = entidad.nombreArticulo;
            tabla.categoria = entidad.categoria;
            tabla.idProveedores = entidad.idProveedores;
            tabla.idMarca = entidad.idMarca;
            return metodArt.insertarArticulo(tabla);
        }

        public bool insertarProveedor(EntidadesProveedores entidad)
        {
            catProveedores tabla = new catProveedores();
            tabla.nombreProveedor = entidad.nombreProveedor;
            tabla.correo = entidad.correo;
            tabla.telefono = entidad.telefono;
            tabla.ciudad = entidad.ciudad;
            return metodoPr.insertarProveedor(tabla);
        }

        public bool insertarCliente(EntidadesClientes entidad)
        {
            tblClientes tabla = new tblClientes();
            tabla.numCedula = entidad.numCedula;
            tabla.primerNombre = entidad.primerNombre;
            tabla.primerApellido = entidad.primerApellido;
            return metodoCl.insertarCliente(tabla);
        }

        //  metodo de inserción de la tabla ventas
        public bool insertarVentas(EntidadesVentas entidad)
        {
            tblVentas tabla = new tblVentas();

            tabla.fecha = entidad.fecha;
            tabla.idCliente = entidad.idCliente;
            tabla.idEmpleado = entidad.idEmpleado;
            tabla.idArticulo = entidad.idArticulo;
            tabla.cantidad = entidad.cantidad;
            tabla.precio = entidad.precio;
            tabla.iva = entidad.iva;
            tabla.total = entidad.total;
            return metodoVenta.insertarVenta(tabla);
        }
        //  metodo de inserción en la tabla compra
        public bool insertarCompra(EntidadesCompras entidades)
        {
            tblCompras tabla = new tblCompras();
            tabla.fecha = entidades.fecha;
            tabla.idProveedor = entidades.idProveedor;
            //tabla.idCliente = entidades.idCliente;
            tabla.idEmpleado = entidades.idEmpleado;
            tabla.idArticulo = entidades.idArticulo;
            tabla.cantidad = entidades.cantidad;
            tabla.precio = entidades.precio;
            tabla.iva = entidades.iva;
            tabla.total = entidades.total;
            return metodoCompra.insertarCompra(tabla);
        }
    }
}

﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class AlmacenTecnoEntities : DbContext
    {
        public AlmacenTecnoEntities()
            : base("name=AlmacenTecnoEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<catArticulos> catArticulos { get; set; }
        public DbSet<catMarcas> catMarcas { get; set; }
        public DbSet<sysdiagrams> sysdiagrams { get; set; }
        public DbSet<catEmpleados> catEmpleados { get; set; }
        public DbSet<catProveedores> catProveedores { get; set; }
        public DbSet<tblClientes> tblClientes { get; set; }
        public DbSet<tblCompras> tblCompras { get; set; }
        public DbSet<tblVentas> tblVentas { get; set; }
    
        public virtual int agregarArticulo(string nombreArticulo, string categoria, Nullable<int> idProveedores, Nullable<int> idMarca)
        {
            var nombreArticuloParameter = nombreArticulo != null ?
                new ObjectParameter("nombreArticulo", nombreArticulo) :
                new ObjectParameter("nombreArticulo", typeof(string));
    
            var categoriaParameter = categoria != null ?
                new ObjectParameter("categoria", categoria) :
                new ObjectParameter("categoria", typeof(string));
    
            var idProveedoresParameter = idProveedores.HasValue ?
                new ObjectParameter("idProveedores", idProveedores) :
                new ObjectParameter("idProveedores", typeof(int));
    
            var idMarcaParameter = idMarca.HasValue ?
                new ObjectParameter("idMarca", idMarca) :
                new ObjectParameter("idMarca", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("agregarArticulo", nombreArticuloParameter, categoriaParameter, idProveedoresParameter, idMarcaParameter);
        }
    
        public virtual int agregarMarca(string nombreMarca)
        {
            var nombreMarcaParameter = nombreMarca != null ?
                new ObjectParameter("nombreMarca", nombreMarca) :
                new ObjectParameter("nombreMarca", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("agregarMarca", nombreMarcaParameter);
        }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual int borrarMarcas(Nullable<int> idMarca)
        {
            var idMarcaParameter = idMarca.HasValue ?
                new ObjectParameter("idMarca", idMarca) :
                new ObjectParameter("idMarca", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("borrarMarcas", idMarcaParameter);
        }
    
        public virtual int editarMarcas(Nullable<int> idMarca, string nombreMarca)
        {
            var idMarcaParameter = idMarca.HasValue ?
                new ObjectParameter("idMarca", idMarca) :
                new ObjectParameter("idMarca", typeof(int));
    
            var nombreMarcaParameter = nombreMarca != null ?
                new ObjectParameter("nombreMarca", nombreMarca) :
                new ObjectParameter("nombreMarca", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("editarMarcas", idMarcaParameter, nombreMarcaParameter);
        }
    
        public virtual int insertarCliente(string numCedula, string primerNombre, string primerApellido)
        {
            var numCedulaParameter = numCedula != null ?
                new ObjectParameter("numCedula", numCedula) :
                new ObjectParameter("numCedula", typeof(string));
    
            var primerNombreParameter = primerNombre != null ?
                new ObjectParameter("primerNombre", primerNombre) :
                new ObjectParameter("primerNombre", typeof(string));
    
            var primerApellidoParameter = primerApellido != null ?
                new ObjectParameter("primerApellido", primerApellido) :
                new ObjectParameter("primerApellido", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarCliente", numCedulaParameter, primerNombreParameter, primerApellidoParameter);
        }
    
        public virtual int insertarCompra(Nullable<System.DateTime> fecha, Nullable<int> idProveedor, Nullable<int> idEmpleado, string articulo, Nullable<decimal> cantidad, Nullable<decimal> precio, Nullable<decimal> iva, Nullable<decimal> total)
        {
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("fecha", fecha) :
                new ObjectParameter("fecha", typeof(System.DateTime));
    
            var idProveedorParameter = idProveedor.HasValue ?
                new ObjectParameter("idProveedor", idProveedor) :
                new ObjectParameter("idProveedor", typeof(int));
    
            var idEmpleadoParameter = idEmpleado.HasValue ?
                new ObjectParameter("idEmpleado", idEmpleado) :
                new ObjectParameter("idEmpleado", typeof(int));
    
            var articuloParameter = articulo != null ?
                new ObjectParameter("articulo", articulo) :
                new ObjectParameter("articulo", typeof(string));
    
            var cantidadParameter = cantidad.HasValue ?
                new ObjectParameter("cantidad", cantidad) :
                new ObjectParameter("cantidad", typeof(decimal));
    
            var precioParameter = precio.HasValue ?
                new ObjectParameter("precio", precio) :
                new ObjectParameter("precio", typeof(decimal));
    
            var ivaParameter = iva.HasValue ?
                new ObjectParameter("iva", iva) :
                new ObjectParameter("iva", typeof(decimal));
    
            var totalParameter = total.HasValue ?
                new ObjectParameter("total", total) :
                new ObjectParameter("total", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarCompra", fechaParameter, idProveedorParameter, idEmpleadoParameter, articuloParameter, cantidadParameter, precioParameter, ivaParameter, totalParameter);
        }
    
        public virtual int insertarDetalleCompra(Nullable<int> idArticulo, Nullable<decimal> valorUnitario, Nullable<decimal> cantidad, Nullable<decimal> totalProducto)
        {
            var idArticuloParameter = idArticulo.HasValue ?
                new ObjectParameter("idArticulo", idArticulo) :
                new ObjectParameter("idArticulo", typeof(int));
    
            var valorUnitarioParameter = valorUnitario.HasValue ?
                new ObjectParameter("valorUnitario", valorUnitario) :
                new ObjectParameter("valorUnitario", typeof(decimal));
    
            var cantidadParameter = cantidad.HasValue ?
                new ObjectParameter("cantidad", cantidad) :
                new ObjectParameter("cantidad", typeof(decimal));
    
            var totalProductoParameter = totalProducto.HasValue ?
                new ObjectParameter("totalProducto", totalProducto) :
                new ObjectParameter("totalProducto", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarDetalleCompra", idArticuloParameter, valorUnitarioParameter, cantidadParameter, totalProductoParameter);
        }
    
        public virtual int insertarDetalleVenta(Nullable<int> idArticulo, Nullable<decimal> cantidad, Nullable<decimal> valorUnitario, Nullable<decimal> totalProductos)
        {
            var idArticuloParameter = idArticulo.HasValue ?
                new ObjectParameter("idArticulo", idArticulo) :
                new ObjectParameter("idArticulo", typeof(int));
    
            var cantidadParameter = cantidad.HasValue ?
                new ObjectParameter("cantidad", cantidad) :
                new ObjectParameter("cantidad", typeof(decimal));
    
            var valorUnitarioParameter = valorUnitario.HasValue ?
                new ObjectParameter("valorUnitario", valorUnitario) :
                new ObjectParameter("valorUnitario", typeof(decimal));
    
            var totalProductosParameter = totalProductos.HasValue ?
                new ObjectParameter("totalProductos", totalProductos) :
                new ObjectParameter("totalProductos", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarDetalleVenta", idArticuloParameter, cantidadParameter, valorUnitarioParameter, totalProductosParameter);
        }
    
        public virtual int insertarEmpleado(string numCedula, string primerNombre, string primerApellido, Nullable<System.DateTime> fechaEntrada)
        {
            var numCedulaParameter = numCedula != null ?
                new ObjectParameter("numCedula", numCedula) :
                new ObjectParameter("numCedula", typeof(string));
    
            var primerNombreParameter = primerNombre != null ?
                new ObjectParameter("primerNombre", primerNombre) :
                new ObjectParameter("primerNombre", typeof(string));
    
            var primerApellidoParameter = primerApellido != null ?
                new ObjectParameter("primerApellido", primerApellido) :
                new ObjectParameter("primerApellido", typeof(string));
    
            var fechaEntradaParameter = fechaEntrada.HasValue ?
                new ObjectParameter("fechaEntrada", fechaEntrada) :
                new ObjectParameter("fechaEntrada", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarEmpleado", numCedulaParameter, primerNombreParameter, primerApellidoParameter, fechaEntradaParameter);
        }
    
        public virtual int insertarProveedor(string nombreProveedor, string correo, string telefono, string ciudad)
        {
            var nombreProveedorParameter = nombreProveedor != null ?
                new ObjectParameter("nombreProveedor", nombreProveedor) :
                new ObjectParameter("nombreProveedor", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("correo", correo) :
                new ObjectParameter("correo", typeof(string));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("telefono", telefono) :
                new ObjectParameter("telefono", typeof(string));
    
            var ciudadParameter = ciudad != null ?
                new ObjectParameter("ciudad", ciudad) :
                new ObjectParameter("ciudad", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarProveedor", nombreProveedorParameter, correoParameter, telefonoParameter, ciudadParameter);
        }
    
        public virtual int insertarVenta(Nullable<System.DateTime> fecha, Nullable<int> idCliente, Nullable<int> idEmpleado, Nullable<decimal> cantidad, Nullable<decimal> precio, Nullable<decimal> iva, Nullable<decimal> total)
        {
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("fecha", fecha) :
                new ObjectParameter("fecha", typeof(System.DateTime));
    
            var idClienteParameter = idCliente.HasValue ?
                new ObjectParameter("idCliente", idCliente) :
                new ObjectParameter("idCliente", typeof(int));
    
            var idEmpleadoParameter = idEmpleado.HasValue ?
                new ObjectParameter("idEmpleado", idEmpleado) :
                new ObjectParameter("idEmpleado", typeof(int));
    
            var cantidadParameter = cantidad.HasValue ?
                new ObjectParameter("cantidad", cantidad) :
                new ObjectParameter("cantidad", typeof(decimal));
    
            var precioParameter = precio.HasValue ?
                new ObjectParameter("precio", precio) :
                new ObjectParameter("precio", typeof(decimal));
    
            var ivaParameter = iva.HasValue ?
                new ObjectParameter("iva", iva) :
                new ObjectParameter("iva", typeof(decimal));
    
            var totalParameter = total.HasValue ?
                new ObjectParameter("total", total) :
                new ObjectParameter("total", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertarVenta", fechaParameter, idClienteParameter, idEmpleadoParameter, cantidadParameter, precioParameter, ivaParameter, totalParameter);
        }
    }
}

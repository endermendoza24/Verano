using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocios;

namespace CapaPresentacion.tablas
{
    public partial class tblCompras : System.Web.UI.Page
    {
        MetodosNegocio metodoComp = new MetodosNegocio();
        EntidadesCompras entidad = new EntidadesCompras();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            entidad.fecha = Convert.ToDateTime(dtpFecha.Value);
            entidad.idProveedor = Convert.ToInt32(drpIdProveedor.Text);
            entidad.idCliente = Convert.ToInt32(drpCliente.Text);
            entidad.idEmpleado = Convert.ToInt32(drpIdEmpleado.Text);
            entidad.cantidad = Convert.ToDecimal(txtCantidad.Text);
            entidad.precio = Convert.ToDecimal(txtPrecio.Text);
            entidad.iva = ((entidad.cantidad * entidad.precio) * 15) / 100;
            entidad.total = (entidad.cantidad * entidad.precio) + entidad.iva;
           
            metodoComp.insertarCompra(entidad);
            Response.Redirect("gridTblCompras.aspx");
        }

        protected void btnVerCompras_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridTblCompras.aspx");
        }
    }
}
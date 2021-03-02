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
    public partial class tblVentas : System.Web.UI.Page
    {
        MetodosNegocio metodoVen = new MetodosNegocio();
        EntidadesVentas entidad = new EntidadesVentas();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            entidad.fecha = Convert.ToDateTime(dtpFecha.Value);
            entidad.idCliente = Convert.ToInt32(drpIdCliente.Text);
            entidad.idEmpleado = Convert.ToInt32(drpIdEmpleado.Text);
            entidad.cantidad = Convert.ToDecimal(txtCantidad.Text);
            entidad.precio = Convert.ToDecimal(txtPrecio.Text);
            entidad.iva = ((entidad.cantidad * entidad.precio) * 15) / 100;
            entidad.total = (entidad.cantidad * entidad.precio) + entidad.iva;

            metodoVen.insertarVentas(entidad);

            Response.Redirect("gridTblVentas.aspx");
        }

        protected void btnVerVentas_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridTblVentas.aspx");
        }
    }
}
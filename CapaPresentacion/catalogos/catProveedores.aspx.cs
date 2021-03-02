using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocios;

namespace CapaPresentacion.catalogos
{
    public partial class catProveedores : System.Web.UI.Page
    {
        MetodosNegocio metodoPro = new MetodosNegocio();
        EntidadesProveedores entidad = new EntidadesProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            entidad.nombreProveedor = txtNombreProveedor.Text;
            entidad.correo = txtCorreo.Value;
            entidad.telefono = txtTele.Value;
            entidad.ciudad = txtCiudad.Text;
            metodoPro.insertarProveedor(entidad);
            Response.Redirect("gridCatProveedor.aspx");

        }

        protected void btnVerProveedores_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridCatProveedor.aspx");
        }
    }
}
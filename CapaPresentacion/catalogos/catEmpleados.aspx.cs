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
    public partial class catEmpleados : System.Web.UI.Page
    {
        MetodosNegocio metodoNeg = new MetodosNegocio();
        EntidadesEmpleados entidades = new EntidadesEmpleados();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            entidades.numCedula = Convert.ToString(txtCedula.Text);
            entidades.primerNombre = txtNombre.Text;
            entidades.primerApellido = txtApellido.Text;
            entidades.fechaEntrada = Convert.ToDateTime(dtpFecha.Value);
            metodoNeg.insertarEmpleado(entidades);
            Response.Redirect("gridCatEmpleado.aspx");
        }

        protected void btnVerEmpleados_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridCatEmpleado.aspx");
        }
    }
}
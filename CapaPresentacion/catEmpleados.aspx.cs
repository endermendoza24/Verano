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
            try
            {
                entidades.numCedula = Convert.ToString(txtCedula.Text);
                entidades.primerNombre = txtNombre.Text;
                entidades.primerApellido = txtApellido.Text;
                entidades.fechaEntrada = Convert.ToDateTime(dtpFecha.Value);
                metodoNeg.insertarEmpleado(entidades);
                limpiar();
                Response.Redirect("gridCatEmpleado.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script> alert('Ocurrió un error');</script>");
            }
        }

        protected void btnVerEmpleados_Click(object sender, EventArgs e)
        {
            limpiar();
            Response.Redirect("gridCatEmpleado.aspx");
        }

        public void limpiar()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            dtpFecha.Value = DateTime.Now.ToString();

        }
    }
}
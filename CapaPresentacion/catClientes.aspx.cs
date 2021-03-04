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
    public partial class catClientes : System.Web.UI.Page
    {
        MetodosNegocio metodoCli = new MetodosNegocio();
        EntidadesClientes entidad = new EntidadesClientes();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                entidad.numCedula = txtNumCedula.Text;
                entidad.primerNombre = txtNombre.Text;
                entidad.primerApellido = txtApelido.Text;
                metodoCli.insertarCliente(entidad);
                limpiar();
                Response.Redirect("gridCatClientes.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script> alert('Ocurrió un error');</script>");
            }
        }

        protected void btnVerCLientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridCatClientes.aspx");
            limpiar();
        }

        public void limpiar()
        {
            txtNumCedula.Text = "";
            txtNombre.Text = "";
            txtApelido.Text = "";
        }
    }
}
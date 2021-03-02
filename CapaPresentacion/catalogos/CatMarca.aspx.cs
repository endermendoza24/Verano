using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocios;

namespace CapaPresentacion
{
    public partial class CatMarca : System.Web.UI.Page
    {
        MetodosNegocio metodo = new MetodosNegocio();
        EntidadesMarcas entidad = new EntidadesMarcas();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                entidad.nombreMarca = Convert.ToString(txtNombreMarca.Text);
                metodo.insertarMarca(entidad);
                Response.Redirect("gridCatMarca.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Ha ocurrido un error');</script)");
            }
        }

        protected void btnVerMarcas_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridCatMarca.aspx");
        }
    }
}
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
    public partial class catarticulos : System.Web.UI.Page
    {
        MetodosNegocio metodos = new MetodosNegocio();
        EntidadesArticulos entidad = new EntidadesArticulos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                entidad.nombreArticulo = Convert.ToString(txtNombreArticulo.Text);
                entidad.categoria = Convert.ToString(drpCategoria.Text);
                entidad.idProveedores = Convert.ToInt32(drpProveedores.Text);
                entidad.idMarca = Convert.ToInt32(drpIdMarca.Text);

                metodos.insertarArticulo(entidad);
                Response.Redirect("gridCatArticulos.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Ha ocurrido un error');</script)");
            }
        }

        protected void btnVerArticulos_Click(object sender, EventArgs e)
        {
            Response.Redirect("gridCatArticulos.aspx");            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pregunta4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String nombre="";
            if (Request.QueryString["nombre"]!=null) {
                nombre = Request.QueryString["nombre"].ToString();
            }
            String apellido = "";
            if (Request.QueryString["apellido"] != null)
            {
                apellido = Request.QueryString["apellido"].ToString();
            }
            String edad = "";
            if (Request.QueryString["edad"] != null)
            {
                edad = Request.QueryString["edad"].ToString();
            }
            Label2.Text = "Nombre: "+nombre;
            Label3.Text = "Apellido: "+apellido;
            Label4.Text = "Edad: " + edad;
            
        }
    }
}
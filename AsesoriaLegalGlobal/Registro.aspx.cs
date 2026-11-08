using System;
using System.Web;
using System.Web.UI;

namespace AsesoriaLegalGlobal
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                Session["Usuario"] = txtUsuario.Text.Trim();
                Session["Nombre"] = txtNombre.Text.Trim();
                HttpCookie cookieClave = new HttpCookie("Contrasena", txtContrasena.Text);
                cookieClave.Expires = DateTime.Now.AddDays(7);
                Response.Cookies.Add(cookieClave);
                HttpCookie cookieUsuario = new HttpCookie("Usuario", txtUsuario.Text.Trim());
                cookieUsuario.Expires = DateTime.Now.AddDays(7);
                Response.Cookies.Add(cookieUsuario);
                Response.Redirect("Login.aspx?registro=ok");
            }
        }
    }
}
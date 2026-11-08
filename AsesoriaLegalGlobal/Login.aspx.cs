using System;
using System.Web;
using System.Web.UI;

namespace AsesoriaLegalGlobal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["registro"] == "ok")
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Registro exitoso! Ingrese su usuario y contraseña para acceder a su espacio.";
                }
                if (Request.Cookies["Usuario"] != null)
                {
                    txtUsuario.Text = Request.Cookies["Usuario"].Value;
                }
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                string usuarioRegistrado = "";
                if (Session["Usuario"] != null)
                {
                    usuarioRegistrado = Session["Usuario"].ToString();
                }
                else if (Request.Cookies["Usuario"] != null)
                {
                    usuarioRegistrado = Request.Cookies["Usuario"].Value;
                }
                HttpCookie cookieClave = Request.Cookies["Contrasena"];
                string claveRegistrada = (cookieClave != null) ? cookieClave.Value : "";
                if (!string.IsNullOrEmpty(usuarioRegistrado) &&
                    txtUsuario.Text.Trim() == usuarioRegistrado &&
                    !string.IsNullOrEmpty(claveRegistrada) &&
                    txtContrasena.Text == claveRegistrada)
                {
                    Session["Usuario"] = txtUsuario.Text.Trim();
                    Response.Redirect("~/Documentos.aspx");
                }
                else
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "Usuario o contraseña incorrectos. Verifique sus datos o registrese.";
                }
            }
        }
    }
}
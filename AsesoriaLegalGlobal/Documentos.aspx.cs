using System;
using System.IO;
using System.Linq;
using System.Web.UI;

namespace AsesoriaLegalGlobal
{
    public partial class Documentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

            lblBienvenida.Text = "Sesion activa de: <strong>" + Session["Usuario"].ToString() + "</strong>";

            if (!IsPostBack)
            {
                CargarDocumentos();
            }
        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Por favor, seleccione un documento para subir.";
                return;
            }
            string extension = Path.GetExtension(FileUpload1.FileName).ToLower();
            string[] extensionesPermitidas = { ".pdf", ".doc", ".docx", ".txt", ".rtf", ".jpg", ".jpeg", ".png" };

            if (!extensionesPermitidas.Contains(extension))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Formato de archivo no permitido. Solo se aceptan documentos (PDF, DOC, DOCX, TXT, imagenes).";
                return;
            }
            if (FileUpload1.PostedFile.ContentLength > 10485760)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "El archivo excede el tamaño maximo permitido de 10 MB.";
                return;
            }
            string carpeta = Server.MapPath(".") + "/Archivos/";
            if (!Directory.Exists(carpeta))
            {
                Directory.CreateDirectory(carpeta);
            }
            string nombreArchivo = Session["Usuario"].ToString() + "_" + FileUpload1.FileName;
            string rutaCompleta = carpeta + nombreArchivo;
            if (File.Exists(rutaCompleta))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Existe un archivo con ese nombre en el servidor para este usuario.";
            }
            else
            {
                FileUpload1.SaveAs(rutaCompleta);

                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "<strong>Documento subido correctamente.</strong><br />" +
                                  "• <b>Nombre:</b> " + FileUpload1.FileName + "<br />" +
                                  "• <b>Tamaño:</b> " + FileUpload1.PostedFile.ContentLength.ToString() + " bytes<br />" +
                                  "• <b>Tipo de archivo:</b> " + FileUpload1.PostedFile.ContentType;
                CargarDocumentos();
            }
        }

        private void CargarDocumentos()
        {
            string carpeta = Server.MapPath(".") + "/Archivos/";
            if (Directory.Exists(carpeta) && Session["Usuario"] != null)
            {
                DirectoryInfo dir = new DirectoryInfo(carpeta);
                string prefijo = Session["Usuario"].ToString() + "_";

                FileInfo[] archivos = dir.GetFiles(prefijo + "*.*");

                var lista = archivos.Select(f => new
                {
                    Nombre = f.Name.Substring(prefijo.Length),
                    Tamano = (f.Length / 1024) + " KB (" + f.Length + " bytes)",
                    Fecha = f.CreationTime.ToString("dd/MM/yyyy HH:mm")
                }).ToList();

                if (lista.Count > 0)
                {
                    gvDocumentos.DataSource = lista;
                    gvDocumentos.DataBind();
                    gvDocumentos.Visible = true;
                    lblSinArchivos.Visible = false;
                }
                else
                {
                    gvDocumentos.Visible = false;
                    lblSinArchivos.Visible = true;
                }
            }
            else
            {
                gvDocumentos.Visible = false;
                lblSinArchivos.Visible = true;
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}
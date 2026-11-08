<%@ Page Title="Iniciar Sesion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AsesoriaLegalGlobal.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card-legal">
                <div class="card-header-legal text-center">
                    <img src="<%= ResolveUrl("~/imagenes/logo3.png") %>" alt="Logo" class="navbar-logo mb-2" />
                    <h2>Iniciar Sesion</h2>
                    <p class="text-muted">Ingrese sus credenciales para acceder a su espacio personal y gestion de documentos.</p>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" CssClass="mb-3" />

                <asp:Label ID="lblMensaje" runat="server" CssClass="d-block mb-3 fw-bold"></asp:Label>

                <div class="form-group-legal">
                    <asp:Label ID="lblUsuario" runat="server" Text="Nombre de Usuario:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server"
                        ControlToValidate="txtUsuario"
                        ErrorMessage="Debe ingresar su nombre de usuario"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control-legal" placeholder="Usuario"></asp:TextBox>
                </div>

                <div class="form-group-legal">
                    <asp:Label ID="lblContrasena" runat="server" Text="Contraseña:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvContrasena" runat="server"
                        ControlToValidate="txtContrasena"
                        ErrorMessage="Debe ingresar su contraseña"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" CssClass="form-control-legal" placeholder="Contraseña"></asp:TextBox>
                </div>

                <div class="d-grid gap-2 mt-4">
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar a Mi Espacio" OnClick="btnIngresar_Click" CssClass="btn btn-gold btn-lg" />
                </div>

                <div class="text-center mt-3">
                    <span class="text-muted">Todavia no tenes una cuenta? </span>
                    <asp:HyperLink ID="hlRegistro" runat="server" NavigateUrl="~/Registro.aspx">Registrarse</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
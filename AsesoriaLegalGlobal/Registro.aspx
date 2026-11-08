<%@ Page Title="Registro de Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="AsesoriaLegalGlobal.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-7">
            <div class="card-legal">
                <div class="card-header-legal text-center">
                    <img src="<%= ResolveUrl("~/imagenes/logo3.png") %>" alt="Logo" class="navbar-logo mb-2" />
                    <h2>Registro de Clientes</h2>
                    <p class="text-muted">Complete los siguientes datos para habilitar su cuenta y espacio personal.</p>
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                    HeaderText="Por favor, corrija los siguientes errores antes de continuar:" CssClass="mb-3" />

                <asp:Label ID="lblMensaje" runat="server" CssClass="d-block mb-3"></asp:Label>
                <div class="form-group-legal">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre y Apellido:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server"
                        ControlToValidate="txtNombre"
                        ErrorMessage="Debe ingresar su nombre y apellido"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control-legal" placeholder="Ej: Elias Godoy"></asp:TextBox>
                </div>
                <div class="form-group-legal">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo Electronico:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvCorreo" runat="server"
                        ControlToValidate="txtCorreo"
                        ErrorMessage="Debe ingresar su correo electronico"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revCorreo" runat="server"
                        ControlToValidate="txtCorreo"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ErrorMessage="El formato del correo electronico no es valido (ejemplo@dominio.com)"
                        Text="*"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control-legal" placeholder="nombre@correo.com"></asp:TextBox>
                </div>
                <div class="form-group-legal">
                    <asp:Label ID="lblUsuario" runat="server" Text="Nombre de Usuario:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server"
                        ControlToValidate="txtUsuario"
                        ErrorMessage="Debe ingresar un nombre de usuario"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control-legal" placeholder="Ej: EliasGodoy"></asp:TextBox>
                </div>
                <div class="form-group-legal">
                    <asp:Label ID="lblEdad" runat="server" Text="Edad:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvEdad" runat="server"
                        ControlToValidate="txtEdad"
                        ErrorMessage="Debe ingresar su edad"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvEdad" runat="server"
                        ControlToValidate="txtEdad"
                        Type="Integer"
                        MinimumValue="16"
                        MaximumValue="120"
                        ErrorMessage="La edad debe ser un numero entero y mayor a 15 años (a partir de 16)"
                        Text="*"
                        ForeColor="Red"></asp:RangeValidator>
                    <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control-legal" placeholder="Ej: 28"></asp:TextBox>
                </div>
                <div class="form-group-legal">
                    <asp:Label ID="lblContrasena" runat="server" Text="Contraseña:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvContrasena" runat="server"
                        ControlToValidate="txtContrasena"
                        ErrorMessage="Debe ingresar una contraseña"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" CssClass="form-control-legal"></asp:TextBox>
                </div>
                <div class="form-group-legal">
                    <asp:Label ID="lblConfirmar" runat="server" Text="Confirmar Contraseña:" CssClass="form-label-legal"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvConfirmar" runat="server"
                        ControlToValidate="txtConfirmar"
                        ErrorMessage="Debe confirmar la contraseña"
                        Text="*"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvContrasena" runat="server"
                        ControlToValidate="txtConfirmar"
                        ControlToCompare="txtContrasena"
                        Operator="Equal"
                        Type="String"
                        ErrorMessage="Las contraseñas no coinciden"
                        Text="*"
                        ForeColor="Red"></asp:CompareValidator>
                    <asp:TextBox ID="txtConfirmar" runat="server" TextMode="Password" CssClass="form-control-legal"></asp:TextBox>
                </div>
                <div class="d-grid gap-2 mt-4">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrarse" OnClick="btnRegistrar_Click" CssClass="btn btn-gold btn-lg" />
                </div>

                <div class="text-center mt-3">
                    <span class="text-muted">Ya tenes una cuenta? </span>
                    <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Iniciar sesion</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
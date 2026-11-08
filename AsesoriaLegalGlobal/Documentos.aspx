<%@ Page Title="Gestion de Documentos Legales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="AsesoriaLegalGlobal.Documentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card-legal mb-4">
        <div class="d-flex justify-content-between align-items-center flex-wrap">
            <div>
                <h2>Espacio de Gestion de Documentos</h2>
                <asp:Label ID="lblBienvenida" runat="server" CssClass="lead text-muted"></asp:Label>
            </div>
            <div class="mt-2 mt-md-0">
                <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6 mb-4">
            <div class="card-legal h-100">
                <div class="card-header-legal">
                    <h3>Cargar Documento Legal</h3>
                    <p class="text-muted small">Suba documentos contractuales, probatorios o anexos de forma segura.</p>
                </div>

                <div class="form-group-legal">
                    <asp:Label ID="lblDocumento" runat="server" Text="Seleccione el archivo a subir:" CssClass="form-label-legal"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-legal" />
                    <small class="text-muted d-block mt-1">Formatos permitidos: PDF, DOC, DOCX, TXT, JPG, PNG (max. 10 MB).</small>
                </div>

                <div class="d-grid gap-2 mt-4">
                    <asp:Button ID="btnSubir" runat="server" Text="Subir Documento al Servidor" OnClick="btnSubir_Click" CssClass="btn btn-gold" />
                </div>

                <div class="mt-4">
                    <asp:Label ID="lblMensaje" runat="server" CssClass="d-block"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-lg-6 mb-4">
            <div class="card-legal h-100">
                <div class="card-header-legal">
                    <h3>Documentos Almacenados</h3>
                    <p class="text-muted small">Archivos custodiados en el servidor para su expediente legal.</p>
                </div>

                <asp:Label ID="lblSinArchivos" runat="server" Text="No hay documentos cargados aun." CssClass="text-muted fst-italic" Visible="false"></asp:Label>

                <asp:GridView ID="gvDocumentos" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-hover table-bordered" GridLines="None">
                    <HeaderStyle CssClass="bg-dark text-white" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre del Archivo" />
                        <asp:BoundField DataField="Tamano" HeaderText="Tamaño" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha de Subida" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
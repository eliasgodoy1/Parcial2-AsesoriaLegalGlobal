<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AsesoriaLegalGlobal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="hero-legal text-center">
        <div class="row align-items-center">
            <div class="col-lg-8 text-lg-start mb-3 mb-lg-0">
                <h1 class="display-5">Asesoria Legal Global</h1>
                <p class="lead">Soluciones juridicas estrategicas y gestion documental confidencial para empresas y particulares.</p>
                <div class="mt-4">
                    <a href="Registro.aspx" class="btn btn-gold btn-lg me-2">Registrarse como Cliente</a>
                    <a href="Login.aspx" class="btn btn-outline-light btn-lg">Acceso a Mi Espacio</a>
                </div>
            </div>
            <div class="col-lg-4 text-center">
                <img src="<%= ResolveUrl("~/imagenes/logo3.png") %>" alt="Emblema Asesoria Legal" class="img-fluid" style="max-height: 180px; filter: drop-shadow(0 4px 8px rgba(0,0,0,0.4));" />
            </div>
        </div>
    </div>
    <div class="card-legal mb-4">
        <div class="card-header-legal text-center">
            <h3>Identidad Corporativa e Institucional</h3>
            <p class="text-muted">Compromiso, excelencia y seguridad en cada proceso legal.</p>
        </div>

        <div class="row g-4 text-center align-items-center">
            <div class="col-md-4">
                <div class="p-3 border rounded bg-light h-100">
                    <img src="<%= ResolveUrl("~/imagenes/logo2.png") %>" alt="Escudo Institucional" class="img-corporate mb-3" style="max-height: 120px;" />
                    <h5>Garantia de Confianza</h5>
                    <p class="small text-muted">Acompanamiento profesional y respaldo etico permanente en todas sus gestiones.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded bg-light h-100">
                    <img src="<%= ResolveUrl("~/imagenes/logo1.png") %>" alt="Banner Oficial" class="img-corporate mb-3" style="max-height: 120px;" />
                    <h5>Presencia Integral</h5>
                    <p class="small text-muted">Soluciones legales modernas adaptadas a las normativas vigentes y el entorno digital.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded bg-light h-100">
                    <img src="<%= ResolveUrl("~/imagenes/logo3.png") %>" alt="Sello de Asesoria Legal" class="img-corporate mb-3" style="max-height: 120px;" />
                    <h5>Gestion Documental Segura</h5>
                    <p class="small text-muted">Almacenamiento y administracion de documentos bajo estrictos protocolos de privacidad.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4">
        <div class="col-md-6">
            <div class="card-legal h-100">
                <div class="card-header-legal">
                    <h3>Nuevo Cliente?</h3>
                </div>
                <p>Cree su cuenta en simples pasos completando nuestro formulario de registro validado. Podra acceder a asesoramiento personalizado y subir su documentacion confidencial.</p>
                <a href="Registro.aspx" class="btn btn-primary mt-2">Ir al Registro de Clientes</a>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card-legal h-100">
                <div class="card-header-legal">
                    <h3>Espacio de Gestion de Documentos</h3>
                </div>
                <p>Si ya esta registrado, inicie sesion con su usuario y contraseña para acceder a su espacio privado, donde podra cargar y administrar sus documentos legales de manera protegida.</p>
                <a href="Login.aspx" class="btn btn-secondary mt-2">Ingresar a Mi Espacio</a>
            </div>
        </div>
    </div>

</asp:Content>
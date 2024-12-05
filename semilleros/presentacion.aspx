<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/home.Master" CodeBehind="presentacion.aspx.vb" Inherits="semilleros.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SPAEU Inicio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container my-5">
        <h1 class="text-center mb-5">SOCIALIZACION DE PROCESOS ACADEMICOS PARA LOS ESTUDIANTES UNADISTAS</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        Como funciona:
                    </div>
                    <div class="card-body">
                        <div class="ratio ratio-16x9">
                            <div class="bg-dark">
                                <div class="position-absolute bottom-0 start-0 w-100 bg-dark p-2">
                                    <div class="d-flex align-items-center">
                                        <button class="btn btn-light btn-sm me-2">▶</button>
                                        <div class="progress flex-grow-1" style="height: 5px;">
                                            <div class="progress-bar" role="progressbar" style="width: 0%"></div>
                                        </div>
                                        <button class="btn btn-light btn-sm ms-2">🔊</button>
                                        <button class="btn btn-light btn-sm ms-2">⛶</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        En esta aplicación usted puede conocer los siguientes procesos:
                    </div>
                    <div class="card-body">
                        <div class="list-group">
                            <asp:HyperLink CssClass="list-group-item list-group-item-action" ID="HyperLink1" runat="server" NavigateUrl="~/homologaciones.aspx">1. Homologaciones</asp:HyperLink>
                            <asp:HyperLink CssClass="list-group-item list-group-item-action" ID="HyperLink2" runat="server" NavigateUrl="~/opcionesgrado.aspx">2. Opciones de grado</asp:HyperLink>
                            <asp:HyperLink CssClass="list-group-item list-group-item-action" ID="HyperLink3" runat="server" NavigateUrl="~/escenarios.aspx">3. Escenarios de componentes prácticos</asp:HyperLink>
                            <asp:HyperLink CssClass="list-group-item list-group-item-action" ID="HyperLink4" runat="server" NavigateUrl="~/metas.aspx">4. Metas e indicadores del SIGI</asp:HyperLink>
                            <asp:HyperLink CssClass="list-group-item list-group-item-action" ID="HyperLink5" runat="server" NavigateUrl="~/semilleros.aspx">5. Semilleros de investigación</asp:HyperLink>
                        </div>
                        <div class="mt-4">
                            <p class="text-muted">
                                Para conocer los procesos académicos usted debe estar registrado en nuestra plataforma, si no está registrado puede hacer click en el botón registrarse y proporcionar los datos requeridos, si ya está registrado, puede dar click en el botón de iniciar sesión.
                            </p>
                        </div>
                        <div class="d-flex justify-content-end gap-2">
                            <asp:Button CssClass="btn btn-outline-primary" ID="Button1" runat="server" Text="Registrarse" PostBackUrl="~/register.aspx" />
                            <asp:Button ID="Button2" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" PostBackUrl="~/login.aspx" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

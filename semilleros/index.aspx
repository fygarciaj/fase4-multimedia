<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="semilleros.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-co">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SPAEU Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
</head>
<body class="padd">
    <form id="form1" runat="server">
    <header class="py-3">
        <div class="container">
            <div class="row align-items-center">
                <div class="col text-center">
                    <asp:Image ID="header" runat="server" ImageUrl="images/header.png" width="100%" CssClass="img-responsive"/>
                </div>
            </div>
        </div>
    </header>
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
                            <div class="list-group-item list-group-item-action">1. Homologaciones</div>
                            <div class="list-group-item list-group-item-action">2. Opciones de grado</div>
                            <div class="list-group-item list-group-item-action">3. Escenarios de componentes prácticos</div>
                            <div class="list-group-item list-group-item-action">4. Metas e indicadores del SIGI</div>
                            <div class="list-group-item list-group-item-action">5. Semilleros de investigación</div>
                        </div>
                        <div class="mt-4">
                            <p class="text-muted">
                                Para conocer los procesos académicos usted debe estar registrado en nuestra plataforma, si no está registrado puede hacer click en el botón registrarse y proporcionar los datos requeridos, si ya está registrado, puede dar click en el botón de iniciar sesión.
                            </p>
                            <div class="d-flex justify-content-end gap-2">
                                <asp:Button CssClass="btn btn-outline-primary" ID="Button1" runat="server" Text="Registrarse" />
                                <asp:Button ID="Button2" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>


<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="semilleros.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro de Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="~/Scripts/jquery-3.6.0.min.js"></script>
    <script src="~/Scripts/jquery.validate.min.js"></script>
    <script src="~/Scripts/jquery.validate.unobtrusive.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#<%= txtConfirmPassword.ClientID %>").on("input", function () {
                var password = $("#<%= txtPassword.ClientID %>").val();
                var confirmPassword = $(this).val();
                var feedback = $("#passwordFeedback");

                if (confirmPassword === password && confirmPassword !== "") {
                    feedback.text("Las contraseñas coinciden.").removeClass("text-danger").addClass("text-success");
                } else {
                    feedback.text("Las contraseñas no coinciden.").removeClass("text-success").addClass("text-danger");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="text-center mb-4">Registro de Usuarios</h2>
                <div class="mb-3 row">
                    <label for="txtUsuario" class="col-sm-3 col-form-label">Nombre de Usuario:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingresa un nombre de usuario" aria-label="Nombre de Usuario" />
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtPassword" class="col-sm-3 col-form-label">Contraseña:</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingresa tu contraseña" aria-label="Contraseña" />
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                    </div>
                    <label for="txtConfirmPassword" class="col-sm-2 col-form-label text-end">Confirmar Contraseña:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirma tu contraseña" aria-label="Confirmar Contraseña" />
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                        <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Las contraseñas no coinciden." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-9">
                        <div id="passwordFeedback" class="mt-2"></div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtNombres" class="col-sm-3 col-form-label">Nombres y Apellidos:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="Ingresa tus nombres" aria-label="Nombres y Apellidos" />
                        <asp:RequiredFieldValidator ID="rfvNombres" runat="server" ControlToValidate="txtNombres" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtNacionalidad" class="col-sm-3 col-form-label">Nacionalidad:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control" placeholder="Ingresa tu nacionalidad" aria-label="Nacionalidad" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlEstadoCivil" class="col-sm-3 col-form-label">Estado Civil:</label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="ddlEstadoCivil" runat="server" CssClass="form-select" aria-label="Estado Civil">
                            <asp:ListItem Value="">Seleccione Estado Civil</asp:ListItem>
                            <asp:ListItem>Soltero</asp:ListItem>
                            <asp:ListItem>Casado</asp:ListItem>
                            <asp:ListItem>Divorciado</asp:ListItem>
                            <asp:ListItem>Viudo</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtCorreo" class="col-sm-3 col-form-label">Correo Electrónico:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="ejemplo@correo.com" aria-label="Correo Electrónico" />
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ser un email válido." CssClass="text-danger" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" Display="Dynamic" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtEdad" class="col-sm-3 col-form-label">Edad:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" placeholder="Ingresa tu edad" aria-label="Edad" />
                        <asp:RangeValidator ID="rvEdad" runat="server" ControlToValidate="txtEdad" MinimumValue="1" MaximumValue="120" Type="Integer" ErrorMessage="Ingresa una edad válida entre 1 y 120." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtPrograma" class="col-sm-3 col-form-label">Programa que Estudia:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtPrograma" runat="server" CssClass="form-control" placeholder="Ingresa tu programa" aria-label="Programa que Estudia" />
                        <asp:RequiredFieldValidator ID="rfvPrograma" runat="server" ControlToValidate="txtPrograma" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtSemestre" class="col-sm-3 col-form-label">Semestre:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtSemestre" runat="server" CssClass="form-control" placeholder="Ingresa tu semestre" aria-label="Semestre" />
                        <asp:RequiredFieldValidator ID="rfvSemestre" runat="server" ControlToValidate="txtSemestre" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtCentro" class="col-sm-3 col-form-label">Centro al que Pertenece:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtCentro" runat="server" CssClass="form-control" placeholder="Ingresa tu centro" aria-label="Centro al que Pertenece" />
                        <asp:RequiredFieldValidator ID="rfvCentro" runat="server" ControlToValidate="txtCentro" ErrorMessage="Este campo es requerido." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                <div class="text-center mb-4">
                    <asp:Button ID="btnRegistrar" Text="Registrar" runat="server" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" />
                    <a id="btnLoginForm" class="btn btn-secondary" href="login.aspx">Ya estoy registrado</a>
                </div>
            </div>
        </div>

        <div>
            <asp:Label ID="lblError" runat="server" Text="" CssClass="error text-center"></asp:Label>
        </div>
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="semilleros.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="~/Scripts/jquery-3.6.0.min.js"></script>
    <script src="~/Scripts/jquery.validate.min.js"></script>
    <script src="~/Scripts/jquery.validate.unobtrusive.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <div class="card">
            <div class="col-sm-12 m-4 p-2">
                <h2 class="text-center mb-4">Registro de Usuarios</h2>
                <div class="mb-3 row">
                    <label for="txtNombres" class="col-sm-2 col-form-label">Nombres y Apellidos:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="Ingresa tus nombres" />
                        <asp:CustomValidator ID="cvNombres" runat="server" ControlToValidate="txtNombres"
                            ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                            Display="Dynamic" ValidateEmptyText="True" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtNacionalidad" class="col-sm-2 col-form-label">Nacionalidad:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control" placeholder="Ingresa tu nacionalidad" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlEstadoCivil" class="col-sm-2 col-form-label">Estado Civil:</label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="ddlEstadoCivil" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Seleccione Estado Civil</asp:ListItem>
                            <asp:ListItem>Soltero</asp:ListItem>
                            <asp:ListItem>Casado</asp:ListItem>
                            <asp:ListItem>Divorciado</asp:ListItem>
                            <asp:ListItem>Viudo</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtCorreo" class="col-sm-2 col-form-label">Correo Electrónico:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="ejemplo@correo.com" />
                        <asp:CustomValidator ID="cvCorreo" runat="server" ControlToValidate="txtCorreo"
                            ErrorMessage="Este campo es requerido y debe ser un email valido." CssClass="text-danger"
                            Display="Dynamic" ValidateEmptyText="True" SetFocusOnError="True" OnServerValidate="ValidateEmail" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtEdad" class="col-sm-2 col-form-label">Edad:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" placeholder="Ingresa tu edad" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtPrograma" class="col-sm-2 col-form-label">Programa que Estudia:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtPrograma" runat="server" CssClass="form-control" placeholder="Ingresa tu programa" />
                        <asp:CustomValidator ID="cvPrograma" runat="server" ControlToValidate="txtPrograma"
                            ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                            Display="Dynamic" ValidateEmptyText="True" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtSemestre" class="col-sm-2 col-form-label">Semestre:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSemestre" runat="server" CssClass="form-control" placeholder="Ingresa tu semestre" />
                        <asp:CustomValidator ID="cvSemestre" runat="server" ControlToValidate="txtSemestre"
                            ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                            Display="Dynamic" ValidateEmptyText="True" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtCentro" class="col-sm-2 col-form-label">Centro al que Pertenece:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtCentro" runat="server" CssClass="form-control" placeholder="Ingresa tu centro" />
                        <asp:CustomValidator ID="cvCentro" runat="server" ControlToValidate="txtCentro"
                            ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                            Display="Dynamic" ValidateEmptyText="True" />
                    </div>
                </div>
                <div class="text-center mb-4">
                    <asp:Button ID="btnRegistrar" Text="Registrar" runat="server" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

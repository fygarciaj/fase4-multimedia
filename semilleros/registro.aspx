<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/home.Master" CodeBehind="registro.aspx.vb" Inherits="semilleros.registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" Placeholder="Usuario"></asp:TextBox>
    <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Contraseña"></asp:TextBox>
    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" />
    <form id="form1" runat="server" class="container mt-5">
        <h2 class="text-center mb-4">Registro de Usuarios</h2>
        <div class="mb-3 row">
            <label for="txtNombres" class="col-sm-2 col-form-label">Nombres y Apellidos:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="Ingresa tus nombres" />
                <asp:CustomValidator ID="cvNombres" runat="server" ControlToValidate="txtNombres"
                    ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                    Display="Dynamic" ValidateEmptyText="True" />
            </div>
        </div>
        <div class="mb-3 row">
            <label for="txtNacionalidad" class="col-sm-2 col-form-label">Nacionalidad:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control" placeholder="Ingresa tu nacionalidad" />
            </div>
        </div>
        <div class="mb-3 row">
            <label for="ddlEstadoCivil" class="col-sm-2 col-form-label">Estado Civil:</label>
            <div class="col-sm-10">
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
            <div class="col-sm-10">
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="ejemplo@correo.com" />
                <asp:CustomValidator ID="cvCorreo" runat="server" ControlToValidate="txtCorreo"
                    ErrorMessage="Este campo es requerido y debe ser un email valido." CssClass="text-danger"
                    Display="Dynamic" ValidateEmptyText="True" SetFocusOnError="True" OnServerValidate="ValidateEmail" />
            </div>
        </div>
        <div class="mb-3 row">
            <label for="txtEdad" class="col-sm-2 col-form-label">Edad:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" placeholder="Ingresa tu edad" />
            </div>
        </div>
        <div class="mb-3 row">
            <label for="txtPrograma" class="col-sm-2 col-form-label">Programa que Estudia:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtPrograma" runat="server" CssClass="form-control" placeholder="Ingresa tu programa" />
                <asp:CustomValidator ID="cvPrograma" runat="server" ControlToValidate="txtPrograma"
                    ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                    Display="Dynamic" ValidateEmptyText="True" />
            </div>
        </div>
        <div class="mb-3 row">
            <label for="txtSemestre" class="col-sm-2 col-form-label">Semestre:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtSemestre" runat="server" CssClass="form-control" placeholder="Ingresa tu semestre" />
                <asp:CustomValidator ID="cvSemestre" runat="server" ControlToValidate="txtSemestre"
                    ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                    Display="Dynamic" ValidateEmptyText="True" />
            </div>
        </div>
        <div class="mb-3 row">
            <label for="txtCentro" class="col-sm-2 col-form-label">Centro al que Pertenece:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtCentro" runat="server" CssClass="form-control" placeholder="Ingresa tu centro" />
                <asp:CustomValidator ID="cvCentro" runat="server" ControlToValidate="txtCentro"
                    ErrorMessage="Este campo es requerido." CssClass="text-danger" OnServerValidate="ValidateRequiredField"
                    Display="Dynamic" ValidateEmptyText="True" />
            </div>
        </div>
        <div class="text-center mb-4">
            <asp:Button ID="Button1" Text="Registrar" runat="server" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" />
        </div>

        <h3 class="text-center mt-4">Lista de Usuarios Registrados</h3>
        <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
            CssClass="table table-striped table-bordered mt-3" OnRowDeleting="gvUsuarios_RowDeleting">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres y Apellidos" />
                <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" />
                <asp:BoundField DataField="EstadoCivil" HeaderText="Estado Civil" />
                <asp:BoundField DataField="Correo" HeaderText="Correo Electrónico" />
                <asp:BoundField DataField="Edad" HeaderText="Edad" />
                <asp:BoundField DataField="Programa" HeaderText="Programa" />
                <asp:BoundField DataField="Semestre" HeaderText="Semestre" />
                <asp:BoundField DataField="Centro" HeaderText="Centro" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="semilleros.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inicio de Session</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: #fff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

            .login-container h3 {
                text-align: center;
                color: #6e8efb;
                margin-bottom: 1.5rem;
            }

        .form-control:focus {
            border-color: #6e8efb;
            box-shadow: 0 0 0 0.2rem rgba(110, 142, 251, 0.25);
        }

        .btn-primary {
            background-color: #6e8efb;
            border: none;
        }

            .btn-primary:hover {
                background-color: #5a78d4;
            }

        .forgot-password {
            display: block;
            text-align: center;
            margin-top: 1rem;
            color: #6e8efb;
            text-decoration: none;
        }

            .forgot-password:hover {
                text-decoration: underline;
            }
    </style>
</head>
<body>
    <div class="login-container">
        <h3>Bienvenido</h3>
        <form id="formlogin" runat="server">
            <div class="mb-3">
                <label for="txtUsuario" class="form-label">Usuario</label>
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Contrasena</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnlogin" type="submit" class="btn btn-primary w-100" Text="Iniciar Session" runat="server" />
            <asp:Label ID="lblError" runat="server" Visible="False" CssClass="text-danger text-center d-block my-3" />

            <asp:Button CssClass="btn btn-outline-primary mt-3" ID="ButtonRegister" runat="server" Text="Registrarse" PostBackUrl="~/register.aspx" AccessKey="r" />
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


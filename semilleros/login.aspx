﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="semilleros.login" %>

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
                <label for="username" class="form-label">Usuario</label>
                <input type="text" class="form-control" id="username" placeholder="Enter your username" />
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Contrasena</label>
                <input type="password" class="form-control" id="password" placeholder="Enter your password" />
            </div>
            <asp:Button ID="btnlogin" type="submit" class="btn btn-primary w-100" Text="Iniciar Session" runat="server" />
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


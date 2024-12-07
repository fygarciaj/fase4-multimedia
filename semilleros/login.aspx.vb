Imports System.Data.SQLite

Public Class login
    Inherits System.Web.UI.Page

    Private connString As String = "Data Source=|DataDirectory|\db.sqlite;Version=3;"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ' Ocultar el mensaje de error al cargar la página
        lblError.Visible = False
    End Sub

    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        ' Validar que los campos no estén vacíos
        If String.IsNullOrWhiteSpace(txtUsuario.Text) Or String.IsNullOrWhiteSpace(txtPassword.Text) Then
            MostrarError("Por favor ingrese su usuario y contraseña.")
            Return
        End If

        ' Validar usuario y contraseña
        If Not AutenticarUsuario(txtUsuario.Text, txtPassword.Text) Then
            MostrarError("Usuario o contraseña no válidos.")
            Return
        End If

        ' Si pasa la validación, redirigir a la página principal
        Session("UsuarioLogueado") = True
        Response.Redirect("~/presentacion.aspx")
    End Sub

    Private Sub MostrarError(mensaje As String)
        lblError.Text = mensaje
        lblError.Visible = True
        lblError.ForeColor = System.Drawing.Color.Red
    End Sub

    Private Function AutenticarUsuario(usuario As String, password As String) As Boolean
        Dim storedHash As String = ""

        ' Consultar la contraseña almacenada para el usuario
        Using conn As New SQLiteConnection(connString)
            Dim query As String = "SELECT Password FROM Usuarios WHERE Usuario = @Usuario"
            Using cmd As New SQLiteCommand(query, conn)
                cmd.Parameters.AddWithValue("@Usuario", usuario)
                conn.Open()
                Dim result = cmd.ExecuteScalar()
                If result IsNot Nothing Then
                    storedHash = Convert.ToString(result)
                End If
            End Using
        End Using

        ' Si no se encuentra el usuario, retornar false
        If String.IsNullOrEmpty(storedHash) Then
            Return False
        End If

        ' Verificar la contraseña usando BCrypt
        Return PasswordHelper.VerifyPassword(password, storedHash)
    End Function
End Class

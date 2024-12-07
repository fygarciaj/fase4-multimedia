Imports System.Data.SqlClient
Imports System.Data.SQLite
Imports System.Text.RegularExpressions
Imports BCrypt.Net.BCrypt

Public Class PasswordHelper
    Public Shared Function HashPassword(password As String) As String
        Return BCrypt.Net.BCrypt.HashPassword(password)
    End Function
    Public Shared Function VerifyPassword(inputPassword As String, hashedPassword As String) As Boolean
        Return BCrypt.Net.BCrypt.Verify(inputPassword, hashedPassword)
    End Function
End Class

Public Class register
    Inherits System.Web.UI.Page

    Private connString As String = "Data Source=|DataDirectory|\db.sqlite;Version=3;"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub ValidateEmail(source As Object, args As ServerValidateEventArgs)
        Dim email As String = args.Value
        Dim emailPattern As String = "^[^@\s]+@[^@\s]+\.[^@\s]+$"
        args.IsValid = Regex.IsMatch(email, emailPattern)
    End Sub

    Protected Sub ValidateRequiredField(source As Object, args As ServerValidateEventArgs)
        args.IsValid = Not String.IsNullOrWhiteSpace(args.Value)
    End Sub

    Private Sub LimpiarCampos()
        txtUsuario.Text = String.Empty
        txtPassword.Text = String.Empty
        txtConfirmPassword.Text = String.Empty
        txtNombres.Text = String.Empty
        txtNacionalidad.Text = String.Empty
        ddlEstadoCivil.SelectedIndex = 0
        txtCorreo.Text = String.Empty
        txtEdad.Text = String.Empty
        txtPrograma.Text = String.Empty
        txtSemestre.Text = String.Empty
        txtCentro.Text = String.Empty
    End Sub

    Private Function ValidarPassword(password As String, confirmPassword As String) As Boolean
        If password <> confirmPassword Then
            lblError.Text = "Las contraseñas no coinciden."
            Return False
        End If

        If password.Length < 8 Then
            lblError.Text = "La contraseña debe tener al menos 8 caracteres."
            Return False
        End If

        Dim passwordPattern As String = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$"
        If Not Regex.IsMatch(password, passwordPattern) Then
            lblError.Text = "La contraseña debe incluir al menos una letra mayúscula, una letra minúscula y un número."
            Return False
        End If

        Return True
    End Function
    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        If Page.IsValid Then
            If Not ValidarPassword(txtPassword.Text, txtConfirmPassword.Text) Then
                lblError.Text = "Las contraseñas no coinciden."
                lblError.ForeColor = System.Drawing.Color.Red
                Return
            End If

            Dim hashedPassword As String = PasswordHelper.HashPassword(txtPassword.Text)

            Try
                Using conn As New SQLiteConnection(connString)
                    Dim query As String = "
                    INSERT INTO Usuarios 
                    (Usuario, Nombres, Nacionalidad, EstadoCivil, Correo, Edad, Programa, Semestre, Centro, Password) 
                    VALUES 
                    (@Usuario, @Nombres, @Nacionalidad, @EstadoCivil, @Correo, @Edad, @Programa, @Semestre, @Centro, @Password)"

                    Using cmd As New SQLiteCommand(query, conn)
                        cmd.Parameters.AddWithValue("@Usuario", txtUsuario.Text)
                        cmd.Parameters.AddWithValue("@Nombres", txtNombres.Text)
                        cmd.Parameters.AddWithValue("@Nacionalidad", txtNacionalidad.Text)
                        cmd.Parameters.AddWithValue("@EstadoCivil", ddlEstadoCivil.SelectedValue)
                        cmd.Parameters.AddWithValue("@Correo", txtCorreo.Text)
                        cmd.Parameters.AddWithValue("@Edad", txtEdad.Text)
                        cmd.Parameters.AddWithValue("@Programa", txtPrograma.Text)
                        cmd.Parameters.AddWithValue("@Semestre", txtSemestre.Text)
                        cmd.Parameters.AddWithValue("@Centro", txtCentro.Text)
                        cmd.Parameters.AddWithValue("@Password", hashedPassword)

                        conn.Open()
                        cmd.ExecuteNonQuery()
                    End Using
                End Using

                lblError.Text = "Registro exitoso. Serás redirigido al inicio de sesión en 5 segundos."
                lblError.ForeColor = System.Drawing.Color.Green
                lblError.Visible = True

                LimpiarCampos()
                ClientScript.RegisterStartupScript(Me.GetType(), "Redirect", "setTimeout(function(){ window.location = 'login.aspx'; }, 5000);", True)

            Catch ex As Exception
                lblError.Text = "Ocurrió un error al registrar el usuario: " & ex.Message
                lblError.ForeColor = System.Drawing.Color.Red
                lblError.Visible = True
            End Try
        End If
    End Sub

End Class

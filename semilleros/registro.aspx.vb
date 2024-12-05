Imports System.Data.SqlClient


Public Class registro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs)
        Dim usuario As String = txtUsuario.Text.Trim()
        Dim contrasena As String = txtContrasena.Text.Trim()

        ' Hashea la contraseña
        Dim contrasenaHash As String = BCrypt.Net.BCrypt.HashPassword(contrasena)

        ' Conecta a la base de datos y registra al usuario
        Using conn As New SqlConnection("TuCadenaDeConexion")
            conn.Open()
            Dim query As String = "INSERT INTO Usuarios (Usuario, Contrasena) VALUES (@Usuario, @Contrasena)"
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Usuario", usuario)
                cmd.Parameters.AddWithValue("@Contrasena", contrasenaHash)
                Try
                    cmd.ExecuteNonQuery()
                    ' lblMensaje.Text = "Registro exitoso"
                Catch ex As Exception
                    ' lblMensaje.Text = "Error: " & ex.Message
                End Try
            End Using
        End Using
    End Sub


End Class
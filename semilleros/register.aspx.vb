Imports System.Data.SQLite

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
        txtNombres.Text = String.Empty
        txtNacionalidad.Text = String.Empty
        ddlEstadoCivil.SelectedIndex = 0
        txtCorreo.Text = String.Empty
        txtEdad.Text = String.Empty
        txtPrograma.Text = String.Empty
        txtSemestre.Text = String.Empty
        txtCentro.Text = String.Empty
    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        If Page.IsValid Then
            Using conn As New SQLiteConnection(connString)
                Dim query As String = "
            INSERT INTO Usuarios 
            (Nombres, Nacionalidad, EstadoCivil, Correo, Edad, Programa, Semestre, Centro) 
            VALUES 
            (@Nombres, @Nacionalidad, @EstadoCivil, @Correo, @Edad, @Programa, @Semestre, @Centro)"

                Using cmd As New SQLiteCommand(query, conn)
                    cmd.Parameters.AddWithValue("@Nombres", txtNombres.Text)
                    cmd.Parameters.AddWithValue("@Nacionalidad", txtNacionalidad.Text)
                    cmd.Parameters.AddWithValue("@EstadoCivil", ddlEstadoCivil.SelectedValue)
                    cmd.Parameters.AddWithValue("@Correo", txtCorreo.Text)
                    cmd.Parameters.AddWithValue("@Edad", txtEdad.Text)
                    cmd.Parameters.AddWithValue("@Programa", txtPrograma.Text)
                    cmd.Parameters.AddWithValue("@Semestre", txtSemestre.Text)
                    cmd.Parameters.AddWithValue("@Centro", txtCentro.Text)

                    conn.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using

            LimpiarCampos()
        End If
    End Sub
End Class
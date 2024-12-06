Imports SQLitePCL.sqlite3
Imports System.IO
Imports SQLitePCL
Imports System.Data.SQLite
Imports System.Text.RegularExpressions

Public Class Site
    Inherits System.Web.UI.MasterPage

    Public ReadOnly Property CurrentPage As String
        Get
            Return System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToLower()
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            InitializeDatabase()
        End If
        If Session("UsuarioLogueado") Is Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub


    Public Function IsActivePage(pageName As String) As String
        Return If(CurrentPage = pageName.ToLower(), "active", "")
    End Function

    Private Shared Function TableExists(connection As SQLiteConnection, tableName As String) As Boolean
        Dim query As String = "SELECT name FROM sqlite_master WHERE type='table' AND name=@tableName;"
        Using cmd As New SQLiteCommand(query, connection)
            cmd.Parameters.AddWithValue("@tableName", tableName)
            Using reader As SQLiteDataReader = cmd.ExecuteReader()
                Return reader.HasRows
            End Using
        End Using
    End Function

    Public Shared Sub InitializeDatabase()
        Try
            Dim appDataPath As String = HttpContext.Current.Server.MapPath("~/App_Data")

            If Not Directory.Exists(appDataPath) Then
                Directory.CreateDirectory(appDataPath)
            End If

            Dim dbPath As String = Path.Combine(appDataPath, "db.sqlite")
            Dim connectionString As String = $"Data Source={dbPath};Version=3;"

            Using connection As New SQLiteConnection(connectionString)
                connection.Open()

                If Not TableExists(connection, "Usuarios") Then
                    Dim tableCommand As String = "
                CREATE TABLE Usuarios (
                    ID INTEGER PRIMARY KEY AUTOINCREMENT,
                    Nombres TEXT NOT NULL,
                    Nacionalidad TEXT NOT NULL,
                    EstadoCivil TEXT NOT NULL,
                    Correo TEXT NOT NULL,
                    Edad INTEGER NOT NULL,
                    Programa TEXT NOT NULL,
                    Semestre INTEGER NOT NULL,
                    Centro TEXT NOT NULL
                );"

                    Using cmd As New SQLiteCommand(tableCommand, connection)
                        cmd.ExecuteNonQuery()
                        Console.WriteLine("Tabla 'Usuarios' creada exitosamente.")
                    End Using
                Else
                    Console.WriteLine("La tabla 'Usuarios' ya existe.")
                End If

                connection.Close()
            End Using

        Catch ex As SQLiteException
            Console.WriteLine($"Error de SQLite: {ex.Message}")
        Catch ex As Exception
            Console.WriteLine($"Error: {ex.Message}")
        End Try
    End Sub

End Class
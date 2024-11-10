Public Class Site
    Inherits System.Web.UI.MasterPage

    Public ReadOnly Property CurrentPage As String
        Get
            Return System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToLower()
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Public Function IsActivePage(pageName As String) As String
        Return If(CurrentPage = pageName.ToLower(), "active", "")
    End Function
End Class
Public Class Formulario_web1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnNext_Click(sender As Object, e As EventArgs)
        Dim currentIndex As Integer = MultiViewEvaluacion.ActiveViewIndex
        MultiViewEvaluacion.ActiveViewIndex = currentIndex + 1
    End Sub

    ' Evento para regresar a la pregunta anterior
    Protected Sub btnBack_Click(sender As Object, e As EventArgs)
        Dim currentIndex As Integer = MultiViewEvaluacion.ActiveViewIndex
        MultiViewEvaluacion.ActiveViewIndex = currentIndex - 1
    End Sub

    ' Evento para calcular el resultado
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim correctAnswers As Integer = 0

        ' Validar las respuestas correctas
        If rbPregunta1.SelectedValue = "3" Then correctAnswers += 1
        If rbPregunta2.SelectedValue = "4" Then correctAnswers += 1
        If rbPregunta3.SelectedValue = "3" Then correctAnswers += 1
        If rbPregunta4.SelectedValue = "3" Then correctAnswers += 1
        If rbPregunta5.SelectedValue = "3" Then correctAnswers += 1

        ' Mostrar el resultado
        lblResult.Text = $"Obtuviste {correctAnswers}/5 respuestas correctas. {(If(correctAnswers >= 3, "¡Aprobaste!", "No aprobaste, inténtalo de nuevo!"))}"
        lblResult.ForeColor = If(correctAnswers >= 3, Drawing.Color.Green, Drawing.Color.Red)
    End Sub
End Class


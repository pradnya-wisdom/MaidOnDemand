Imports System.Data.SqlClient
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uid") <> Nothing Then
            Lbl1.Text = Session("uid").ToString()
            LinkButton1.Text = "Logout"
        Else
            Lbl1.Text = ""
            LinkButton1.Text = "Login"
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        If Session("uid") <> Nothing Then
            Session.Clear()
            Response.Redirect("Login.aspx")
        Else
            Response.Redirect("Login.aspx")
        End If

       
    End Sub
End Class



Partial Class AdminLogin
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Txtemail.Text = "Admin" And Txtpass.Text = "mod" Then
            Response.Redirect("admin/adminhome.aspx")
        Else
            Response.Write("<script>alert('You are not authorised');</script>")
        End If
    End Sub
End Class

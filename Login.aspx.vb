Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class Login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("dbmodConnectionString").ConnectionString)
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("select user_id, password from tbluser where email=@email", con)
        cmd.Parameters.AddWithValue("@email", Txtemail.Text)
        con.Open()
        Dim dr As SqlDataReader = cmd.ExecuteReader()

        If (dr.Read()) Then
            Session("uid") = Txtemail.Text
            Session("user_id") = dr("user_id").ToString()
            Response.Redirect("Default.aspx")
        End If
        con.Close()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

    End Sub
End Class

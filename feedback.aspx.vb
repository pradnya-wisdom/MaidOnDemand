Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class feedback
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("dbmodConnectionString").ConnectionString)


    Protected Sub Btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubmit.Click
        Dim cmd As New SqlCommand("INSERT INTO tblfeedback (Full_name, Email_id, Comment)VALUES(@1,@2,@3)", con)
        cmd.Parameters.AddWithValue("@1", Txtname.Text)
        cmd.Parameters.AddWithValue("@2", Txtemail.Text)
        cmd.Parameters.AddWithValue("@3", Txtcomment.Text)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('Thank you for feedback');</script>")
    End Sub
End Class

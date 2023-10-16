Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class Register
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("dbmodConnectionString").ConnectionString)
   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("INSERT INTO tbluser (fullname, email, contact, address, city, password)VALUES(@1,@2,@3,@4,@5,@6)", con)
        cmd.Parameters.AddWithValue("@1", Txtname.Text)
        cmd.Parameters.AddWithValue("@2", Txtemail.Text)
        cmd.Parameters.AddWithValue("@3", Txtcontact.Text)
        cmd.Parameters.AddWithValue("@4", txtaddress.Text)
        cmd.Parameters.AddWithValue("@5", Txtcity.Text)
        cmd.Parameters.AddWithValue("@6", Txtpass.Text)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('Registered Successfulyy');</script>")
    End Sub
End Class

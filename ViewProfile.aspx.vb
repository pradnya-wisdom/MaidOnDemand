Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class ViewProfile
    Inherits System.Web.UI.Page


    Protected Sub Repeater1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim maid_id As String = e.CommandArgument
        Dim user_id As String = Session("user_id").ToString()

        Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("dbmodConnectionString").ConnectionString)
        Dim cmd As New SqlCommand("insert into tblshortlist(u_id,maid_id,ondate)values(@1,@2,@3)", con)
        cmd.Parameters.AddWithValue("@1", user_id)
        cmd.Parameters.AddWithValue("@2", maid_id)
        cmd.Parameters.AddWithValue("@3", DateAndTime.Now)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("Success.aspx")


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user_id") <> Nothing Then

        Else
            Response.Redirect("Login.aspx")
            Response.Write("<script>alert('Please Login first to view Profile');</script>")
        End If
    End Sub
End Class

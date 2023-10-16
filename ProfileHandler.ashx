<%@ WebHandler Language="VB" Class="ProfileHandler" %>

Imports System
Imports System.Web
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class ProfileHandler : Implements IHttpHandler
    
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("dbmodConnectionString").ConnectionString)
        Dim cmd As New SqlCommand("Select * from tblmaid where maid_id=@maid_id", con)
        cmd.Parameters.AddWithValue("@maid_id", context.Request.QueryString("maid_id"))
        con.Open()
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        If dr.Read() Then
            context.Response.BinaryWrite(dr("profile_pic"))
        End If
        con.Close()
    End Sub
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class
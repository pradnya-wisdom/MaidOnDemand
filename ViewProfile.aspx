<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewProfile.aspx.vb" Inherits="ViewProfile" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" Runat="Server">
<div style=" margin:15px;"></div>
<section id="about">
      <div class="container" >
        <h4 class="text-center text-uppercase text-secondary mb-0">Find your Maid</h4>
        <h4>Select Location</h4>
          <p>
          <table>
          
          <tr><td> <asp:TextBox ID="Txtlocation" runat="server" class="form-control" placeholder="Enter location here"></asp:TextBox></td>
              <td><asp:Button ID="Button2" runat="server" Text="Search" CssClass="btn btn-dark"></asp:Button></td></tr>
          </table>
          
          
          
         
          
          </p>
        
        <hr class="star-dark mb-5"> 
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>  
                    <div style="border:solid 1px silver; padding:15px">  
                       <asp:HiddenField ID="hfmaidid" Value='<%# Eval("maid_id") %>'  runat="server"></asp:HiddenField>
                        <table>
                            <tr>
                                <td style="vertical-align:top; width:300px">
                                    <img src='<%# "ProfileHandler.ashx?maid_id=" & Eval("maid_id") %>' style="max-width:300px" />
                                </td>
                                <td style="padding-left:15px; vertical-align:top">
                                    <h5><i><%#Eval("fullname")%> </i></h5>
                                    <table>
                                        <tr>
                                            <td>Experience</td>
                                            <th>: <%#Eval("experience")%></th>
                                        </tr>
                                        <tr>
                                            <td>Contact</td>
                                            <th>: Call - <%#Eval("contact")%>,
                                                  Email - <%#Eval("email")%>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                Location
                                            </td>
                                            <th>: <%#Eval("location")%></th>
                                        </tr>
                                        <tr>
                                            <td>
                                                Salary
                                            </td>
                                            <th>
                                                : Rs. <%#Eval("salary")%>
                                            </th>
                                        </tr>                                        
                                    </table>
                                    <div><strong>Services:</strong></div>
                                    <asp:Repeater ID="Repeater2" DataSourceID="AccessDataSource1" runat="server">
                                        <ItemTemplate>
                                           <a class="btn btn-primary btn-sm">
                                            <i class="fa fa-tag"></i> <%#Eval("service_name")%>
                                           </a>
                                           &nbsp;&nbsp;&nbsp;
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="AccessDataSource1" runat="server"
                                     ConnectionString="<%$ ConnectionStrings:dbmodConnectionString %>" 
                                     SelectCommand="select * from VW_MaidServiceDetails where maid_id=@maid_id">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hfmaidid" Name="maid_id" DefaultValue="0" PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                <div><br /><asp:Button ID="Button1" runat="server" Text="Interested" CommandArgument='<%# Eval("maid_id") %>' CssClass="btn btn-success btn-sm"></asp:Button></div>
                                </td>
                                
                            </tr>
                        </table>
                        
                   </div>                  
                </ItemTemplate>
            </asp:Repeater>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbmodConnectionString %>" 
                
              SelectCommand="SELECT * FROM [tblmaid] WHERE ([location] LIKE '%' + @location + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Txtlocation" DefaultValue="satara" 
                        Name="location" PropertyName="Text" Type="String" />
                </SelectParameters>
          </asp:SqlDataSource> 
</div>
</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>


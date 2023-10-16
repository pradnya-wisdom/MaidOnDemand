<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" Runat="Server">
<div style=" margin:15px;"></div>
      <section id="contact">
      <div class="container" style=" margin:15px;">
        <h2 class="text-center text-uppercase text-secondary mb-0">Login Here</h2>
        <hr class="star-dark mb-5">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
            <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
           
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label></label>
                  <asp:TextBox ID="Txtemail" runat="server"  placeholder="Email Id" required="required" data-validation-required-message="Please enter your name."></asp:TextBox>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Password</label>
                  <asp:TextBox ID="Txtpass" runat="server" placeholder="Password" required="required" data-validation-required-message="Please enter your email address." TextMode="Password"></asp:TextBox>
                
                 
                </div>
                
              </div>
               
              
              <br>
              <div id="success"></div>
              <div class="form-group">
              <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary btn-xl"></asp:Button>
               <asp:Button ID="Button3" runat="server" Text="Cancel" class="btn btn-primary btn-xl"></asp:Button>
              </div>
             <p class="help-block text-danger"><h3>If not registered <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Register.aspx">Click Here</asp:HyperLink> to Register</h3></p>
          
          </div>
        </div>
      </div>
    </section>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>


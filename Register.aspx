<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" Runat="Server">
 
    <section id="contact">
      <div class="container" style=" margin:15px;">
        <h4 class="text-center text-uppercase text-secondary mb-0">Register Here</h4>
        <hr class="star-dark mb-5">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
            <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
           
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label></label>
                  <asp:TextBox ID="Txtname" runat="server"  placeholder="Full Name"></asp:TextBox>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label></label>
                  <asp:TextBox ID="Txtemail" runat="server"  placeholder="Email Id"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtemail" ErrorMessage="*"></asp:RequiredFieldValidator>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label></label>
                  <asp:TextBox ID="Txtcontact" runat="server"  placeholder="Contact"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="10 digits only" ControlToValidate="Txtcontact" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              
              
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label></label>
                  <asp:TextBox ID="txtaddress" runat="server" placeholder="Address"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate= "txtaddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label></label>
                  <asp:TextBox ID="Txtcity" runat="server"  placeholder="City" ></asp:TextBox>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              
                            
              <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Password</label>
                  <asp:TextBox ID="Txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                
                  <p class="help-block text-danger"></p>
                </div>
                
                 <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Confirm Password</label>
                  <asp:TextBox ID="Txtcpass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Password Mismatch" ControlToCompare="Txtpass" 
                        ControlToValidate="Txtcpass"></asp:CompareValidator>
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              
              <br>
              <div id="success"></div>
              <div class="form-group">
              
              <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary btn-xl"></asp:Button>
               <asp:Button ID="Button3" runat="server" Text="Cancel" class="btn btn-primary btn-xl"></asp:Button>
              </div>
             
          
          </div>
        </div>
      </div>
    </section>
 


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>


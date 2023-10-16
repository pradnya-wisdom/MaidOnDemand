<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="feedback" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" Runat="Server">
   
   
   
   <section id="contact">
      <div class="container" style=" margin:15px;">
        <h4 class="text-center text-uppercase text-secondary mb-0">Feedback </h4>
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
                  <asp:TextBox ID="Txtcomment" runat="server"  placeholder="Comment"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtemail" ErrorMessage="*"></asp:RequiredFieldValidator>
                  
             
                  <p class="help-block text-danger"></p>
                </div>
              </div> 
              
               <div class="form-group">
              
              <asp:Button ID="Btnsubmit" runat="server" Text="Submit" 
                       class="btn btn-primary btn-xl"></asp:Button>
               
              </div>
             
              
              
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>


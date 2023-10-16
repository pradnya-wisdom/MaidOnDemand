<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" Runat="Server"> 

    <!-- Banner -->
    <header class="masthead bg-primary text-white text-center">
        <div class="container">
        <img class="img-fluid mb-5 d-block mx-auto" src="Images/profile.png" alt="" />
        <h3 class="text-uppercase mb-0">Our Vision is to create and build a platform delivering homecare</h3>
        <hr class="star-light" />
        <h5 class="font-weight-light mb-0">MaidOnDemand is an online assisted search service built to help you and your family find any category of domestic helper in a real quick time. Founded by industry professionals with combined experience of over 50 years we have successfully helped over 5000 families find care workers for their homes in the last 3.5 years of operations. Our mission is to make finding the right help an easy task and fast process for millions of households across the country resulting in happiness and delight for households. Our team of placement experts use their knowledge and experience to search, screen and shortlist only the best candidates for you. In time our processes have been refined by incorporating the learning’s from our customer experiences and are definitely bound to delight you every time you come to us for our services. We look forward to hear from you</h5>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbmodConnectionString %>" 
        SelectCommand="SELECT * FROM [tblmaid]"></asp:SqlDataSource>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>


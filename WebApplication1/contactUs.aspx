<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="WebApplication1.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      <h1>Contact Us</h1>
      <h5>Please fill out this form and we will get in touch with you shortly.</h5>
      <div class="jumbotron col-sm-7 well">
         <div class="form-group ">
             <asp:Label for="first" runat="server" Text="First Name:" CssClass="control-label col-sm-3"></asp:Label>
             <asp:TextBox ID="first" runat="server"></asp:TextBox>
          </div>

          <div class="form-group">
             <asp:Label for="last" runat="server" Text="Last Name:" CssClass="control-label col-sm-3"></asp:Label>
             <asp:TextBox ID="last" runat="server"></asp:TextBox>
         </div>

          <div class="form-group">
             <asp:Label for="email" runat="server" Text="Email:" CssClass="control-label col-sm-3"></asp:Label>
             <asp:TextBox ID="email" runat="server"></asp:TextBox>
         </div>

         <div class="form-group">
             <asp:Label for="message" runat="server" Text="Message:" CssClass="control-label col-sm-3"></asp:Label>
             <textarea rows="4" cols="25" runat="server"></textarea><br /><br />
             <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-default" />
         </div>
          


       


        </div>
    </div>
</asp:Content>

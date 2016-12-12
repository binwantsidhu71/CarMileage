<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">
         <h1>Login</h1>
        <p>If you are not Registered yet<a href="register.aspx"> Click Here</a></p>
    <div class="jumbotron col-lg-6 col-offset-6 centered well-lg">

        <div class="form-group ">
         <asp:Label ID="labelmsg" runat="server" Text="Please enter Username & Password" CssClass="alert alert-info col-sm-offset-3"></asp:Label>
     </div><br />

    <div class="form-group ">
        <asp:Label for="usertext" runat="server" Text="Username: " CssClass="control-label col-sm-3"></asp:Label>
        <asp:TextBox ID="usertext" runat="server" required ></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label for="passwordtext" runat="server" Text="Password: " CssClass="control-label col-sm-3"></asp:Label>
        <asp:TextBox ID="passwordtext" runat="server" required TextMode="Password"></asp:TextBox>
    </div>

    <asp:Button runat="server" ID="btn_login" cssClass="btn btn-success col-sm-offset-3" Text="Login" OnClick="btn_login_Click" />
        </div>
        </div>
</asp:Content>

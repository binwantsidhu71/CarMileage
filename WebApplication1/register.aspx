<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>Register</h1>
    <div class="jumbotron col-lg-5 col-sm-3 col-offset-6 centered well">
     <div class="form-group ">
         <asp:Label ID="labelmsg" runat="server" Text="Please Create A New Account" CssClass="alert alert-info col-sm-offset-3"></asp:Label>
     </div><br />

    <div class="form-group ">
        <asp:Label for="usertext" runat="server" Text="Username: " CssClass="control-label col-sm-3"></asp:Label>
        <asp:TextBox ID="usertext" runat="server" required ></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label for="passwordtext" runat="server" Text="Password: " CssClass="control-label col-sm-3"></asp:Label>
        <asp:TextBox ID="passwordtext" runat="server" required TextMode="Password"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label for="confirmtext" runat="server" Text="Confirm Password: " CssClass="control-label col-sm-3"></asp:Label>
        <asp:TextBox ID="confirmtext" runat="server" required TextMode="Password"></asp:TextBox>
        <asp:CompareValidator runat="server" ErrorMessage="Password Match Fail" ControlToCompare="confirmtext" 
            ControlToValidate="passwordtext" Operator="Equal" CssClass="alert alert-danger"></asp:CompareValidator>
    </div>

    <asp:Button runat="server" ID="btn_create" CssClass="btn btn-success col-sm-offset-3" OnClick="btn_create_Click"
        Text="Create"/>
        </div>
        </div>
</asp:Content>

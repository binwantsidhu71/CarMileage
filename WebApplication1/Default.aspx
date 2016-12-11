<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron well-lg">
            <div class="col-sm-7">
                <h2>Car Mileage Calculator</h2><br />
                <p>Is my car a gas guzzling machine? This is a question boggling our brains these days as fuel prices reach all-time highs.
                    To help go the distance and answer this gassing question, I’ve created the Gas Mileage Calculator 
                    to help determine the gas consumption of your vehicle.My hope is you will save money on gas by 
                    knowing your car’s gas mileage and consequently working towards becoming more efficient.</p>
            </div>
            <div class=" regibtn">
             <h5>Register For New Users</h5>
             <a href="register.aspx"><asp:Button ID="Register" runat="server" Text="Register" CssClass="btn btn-success " /></a>
             </div>
            <div class="logbtn">
             <h5>Login For Existing Users</h5>
             <a href="login.aspx"><asp:Button ID="Login" runat="server" Text="Login" CssClass="btn btn-primary " /></a>
             </div>
            <div class="row">
             <div class="col-xs-6 col-md-4 thumbnail calimg">
                  <img src="Images/Carcal.png" alt="Calculator">
              </div>
            </div>

        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="WebApplication1.aboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>About Us</h1>
        <div class="jumbotron col-sm-">
            <div class="col-sm-6">
                <p>To improve your gas mileage you first need to know what your current gas mileage is or you will not know if it got any better.
                    Find out the gas mileage of your car by entering the distance you have travelled (from past and present odometer reading) and the 
                    amount of fuel that used in the form below. Give us the fuel used as well and we'll calculate your total fuel per mile at the same time. </p>
                </div>
               <div class="row">
                <div class="col-xs-6 col-md-6 thumbnail">
                    <img src="Images/fuel-meter.png" alt="Fuel-Meter">
                </div>
            </div>
        </div>
    </div>


</asp:Content>

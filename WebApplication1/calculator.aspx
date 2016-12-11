<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="WebApplication1.calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <h2>Enter Your Car Detail</h2>
        <div class="jumbotron">
        <div class="form-group ">
            <asp:Label For="CarName" runat="server" Text="Car Name:" CssClass="control-label  col-sm-3"></asp:Label>
            <asp:TextBox ID="CarName" runat="server" required></asp:TextBox>
        </div>

         <div class="form-group">
            <asp:Label For="CarNumber" runat="server" Text="Car Number: " CssClass="control-label  col-sm-3"></asp:Label>
            <asp:TextBox ID="CarNumber" runat="server" required></asp:TextBox>
        </div>
      
         <div class="form-group">
            <asp:Label For="Date" runat="server" Text="Date: " CssClass="control-label
                 col-sm-3"></asp:Label>
            <asp:TextBox ID="Date" runat="server" TextMode="Date" required></asp:TextBox>
        </div>
        </div>

        <h2>Calculate Car Mileage</h2>
        <div class="jumbotron">
        <div class="form-group">
            <asp:Label For="Fuel" runat="server" Text="Fuel Consumption:" CssClass="control-label  col-sm-3"></asp:Label>
            <asp:TextBox ID="Fuel" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" cssclass="alert-danger"
                 ControlToValidate="Fuel" display="Dynamic">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Incorrect Input" cssclass="alert-danger" ControlToValidate="Fuel"
            MaximumValue="9999999" MinimumValue="0.01"  Display="Dynamic" >
            </asp:RangeValidator>
        </div>
            
        <div class="form-group">
            <asp:Label For="Distance" runat="server" Text="Distance Travelled: " CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="Distance" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" cssclass="alert-danger"
                 ControlToValidate="Distance" display="Dynamic">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Incorrect Input" cssclass="alert-danger" ControlToValidate="Distance"
            MaximumValue="9999999" MinimumValue="0.01"  Display="Dynamic" >
            </asp:RangeValidator>
        </div> 
            <asp:Button ID="Calculate" runat="server" Text="Calculate" CssClass="btn btn-primary control-label" OnClick="Calculate_Click" />

        </div>
    </div>
</asp:Content>

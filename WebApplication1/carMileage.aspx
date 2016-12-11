<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="carMileage.aspx.cs" Inherits="WebApplication1.carMileage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Car Mileage</h1>
    <a href="calculator.aspx">Calculate Mileage</a>s
    <asp:GridView ID="grdMileage" runat="server" CssClass="table table-striped"
        autogeneratecolumns="false" DataKeyNames="CarID" OnRowDeleting="grdMileage_RowDeleting">
        <Columns>
            <asp:BoundField DataField="CarID" Headertext="ID" Visible="false" />
            <asp:BoundField DataField="CarName" Headertext="Car Name" />
            <asp:BoundField DataField="CarNumber" Headertext="Car Number" />
            <asp:BoundField DataField="VehicleMileage" Headertext="Car Mileage" />
            <asp:BoundField DataField="Date" Headertext="Date" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit"  NavigateUrl="~/calculator.aspx" 
                DataNavigateUrlFields="CarID" DataNavigateUrlFormatString="~/calculator.aspx?CarID={0}" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ControlStyle-CssClass="confirmation" />
        </Columns>
    </asp:GridView>
</asp:Content>

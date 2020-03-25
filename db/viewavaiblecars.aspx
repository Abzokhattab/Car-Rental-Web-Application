<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewavaiblecars.aspx.cs" Inherits="db.WebForm33" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewAvaibleCars" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Car_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" InsertVisible="False" ReadOnly="True" SortExpression="Car_ID" />
                <asp:BoundField DataField="License_Plate" HeaderText="License_Plate" SortExpression="License_Plate" />
                <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="Gps_Location" HeaderText="Gps_Location" SortExpression="Gps_Location" />
                <asp:BoundField DataField="Stat" HeaderText="Stat" SortExpression="Stat" />
                <asp:BoundField DataField="Motor" HeaderText="Motor" SortExpression="Motor" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Ownership1" HeaderText="Ownership1" SortExpression="Ownership1" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Location_ID" HeaderText="Location_ID" SortExpression="Location_ID" />
                <asp:BoundField DataField="Dealer_ID" HeaderText="Dealer_ID" SortExpression="Dealer_ID" />
                <asp:BoundField DataField="Rental_ID" HeaderText="Rental_ID" SortExpression="Rental_ID" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

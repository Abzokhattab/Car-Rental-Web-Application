<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewrentals.aspx.cs" Inherits="db.WebForm38" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewRentedCars" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Rental_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Rental_ID" HeaderText="Rental_ID" InsertVisible="False" ReadOnly="True" SortExpression="Rental_ID" />
                <asp:BoundField DataField="Starts" HeaderText="Starts" SortExpression="Starts" />
                <asp:BoundField DataField="ends" HeaderText="ends" SortExpression="ends" />
                <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" SortExpression="Car_ID" />
                <asp:BoundField DataField="Card_Number" HeaderText="Card_Number" SortExpression="Card_Number" />
                <asp:BoundField DataField="Card_Expiry_Date" HeaderText="Card_Expiry_Date" SortExpression="Card_Expiry_Date" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Insurance_ID" HeaderText="Insurance_ID" SortExpression="Insurance_ID" />
                <asp:BoundField DataField="ExtraId" HeaderText="ExtraId" SortExpression="ExtraId" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

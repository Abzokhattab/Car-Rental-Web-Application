<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcusomers.aspx.cs" Inherits="db.WebForm18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewAllCustomers" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Driving_License" HeaderText="Driving_License" SortExpression="Driving_License" />
                <asp:BoundField DataField="Class_of_Intrest" HeaderText="Class_of_Intrest" SortExpression="Class_of_Intrest" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

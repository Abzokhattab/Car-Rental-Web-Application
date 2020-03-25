<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewextras.aspx.cs" Inherits="db.WebForm37" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="ViewExtras" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ExtraId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ExtraId" HeaderText="ExtraId" InsertVisible="False" ReadOnly="True" SortExpression="ExtraId" />
                <asp:BoundField DataField="Extra" HeaderText="Extra" SortExpression="Extra" />
                <asp:BoundField DataField="Daily_rate" HeaderText="Daily_rate" SortExpression="Daily_rate" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewallinsurances.aspx.cs" Inherits="db.WebForm27" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewAllInsurance" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Insurance_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Insurance_ID" HeaderText="Insurance_ID" InsertVisible="False" ReadOnly="True" SortExpression="Insurance_ID" />
                <asp:BoundField DataField="Coverage" HeaderText="Coverage" SortExpression="Coverage" />
                <asp:BoundField DataField="Insurance_Type" HeaderText="Insurance_Type" SortExpression="Insurance_Type" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

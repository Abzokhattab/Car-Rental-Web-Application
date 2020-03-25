<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewspeceficcustomer.aspx.cs" Inherits="db.WebForm19" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
            width: 263px;
        }
        .auto-style4 {
            margin-left: 571px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Customer ID :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="293px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="View" Width="152px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewSpecificCustomer" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="customerID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
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

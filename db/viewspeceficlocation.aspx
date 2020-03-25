<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewspeceficlocation.aspx.cs" Inherits="db.WebForm22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            width: 138px;
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Location ID :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="213px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="Button" Width="177px" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewSpecificLocation" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="locationID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Location_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Location_ID" HeaderText="Location_ID" InsertVisible="False" ReadOnly="True" SortExpression="Location_ID" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

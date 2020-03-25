<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewspeceficinsurnce.aspx.cs" Inherits="db.WebForm20" %>

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
            width: 159px;
        }
        .auto-style3 {
            width: 159px;
        }
        .auto-style4 {
            margin-left: 566px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Insurance ID :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="339px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="View" Width="151px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewSpecificInsurance" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="insuranceID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
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

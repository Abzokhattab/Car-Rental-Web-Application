<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcardmg.aspx.cs" Inherits="db.WebForm16" %>

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
            width: 129px;
        }
        .auto-style3 {
            width: 129px;
        }
        .auto-style4 {
            margin-left: 387px;
        }
        .auto-style5 {
            margin-top: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Car Id :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="193px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="View" Width="195px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewDamages" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Car_id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" DataKeyNames="Damage_id" DataSourceID="SqlDataSource1" Height="142px" Width="438px">
            <Columns>
                <asp:BoundField DataField="Damage_id" HeaderText="Damage_id" InsertVisible="False" ReadOnly="True" SortExpression="Damage_id" />
                <asp:BoundField DataField="Damage_Name" HeaderText="Damage_Name" SortExpression="Damage_Name" />
                <asp:BoundField DataField="Damage_Type" HeaderText="Damage_Type" SortExpression="Damage_Type" />
                <asp:BoundField DataField="Damage_Price" HeaderText="Damage_Price" SortExpression="Damage_Price" />
                <asp:BoundField DataField="Car_id" HeaderText="Car_id" SortExpression="Car_id" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

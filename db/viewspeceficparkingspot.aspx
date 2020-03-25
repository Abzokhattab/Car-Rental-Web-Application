<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewspeceficparkingspot.aspx.cs" Inherits="db.WebForm21" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            width: 173px;
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 463px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Parking Spot ID :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="239px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="View" Width="170px" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewSpecificParkingSpot" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="spotID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Spot_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Spot_ID" HeaderText="Spot_ID" InsertVisible="False" ReadOnly="True" SortExpression="Spot_ID" />
                <asp:BoundField DataField="Location_ID" HeaderText="Location_ID" SortExpression="Location_ID" />
                <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" SortExpression="Car_ID" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

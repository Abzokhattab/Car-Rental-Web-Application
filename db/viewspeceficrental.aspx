<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewspeceficrental.aspx.cs" Inherits="db.WebForm23" %>

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
            width: 118px;
            height: 53px;
        }
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            margin-left: 410px;
        }
        .auto-style5 {
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Rental ID :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="43px" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="View" Width="138px" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewSpecificRentedCar" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="rentID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Rental_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Rental_ID" HeaderText="Rental_ID" InsertVisible="False" ReadOnly="True" SortExpression="Rental_ID" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" SortExpression="Car_ID" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Insurance_ID" HeaderText="Insurance_ID" SortExpression="Insurance_ID" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sendcartomaintenance.aspx.cs" Inherits="db.WebForm34" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 119px;
            font-size: x-large;
        }
        .auto-style3 {
            margin-left: 444px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Car ID :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Dealer ID :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="42px" OnClick="Button1_Click" Text="Send" Width="132px" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="renewlicense.aspx.cs" Inherits="db.WebForm31" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 141px;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 453px;
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
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">new License :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="222px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="33px" OnClick="Button1_Click" Text="Renew" Width="149px" />
    </form>
</body>
</html>

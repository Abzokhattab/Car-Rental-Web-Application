<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changecarstate.aspx.cs" Inherits="db.WebForm24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 133px;
            font-size: x-large;
        }
        .auto-style3 {
            margin-left: 160px;
        }
        .auto-style4 {
            margin-left: 421px;
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
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">New State :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="258px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="37px" OnClick="Button1_Click" Text="Change" Width="149px" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changecarstat.aspx.cs" Inherits="db.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 94px;
        }
        .auto-style2 {
            width: 127px;
            font-size: x-large;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            margin-left: 455px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">New Stat :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Car Id :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="207px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="change" Width="259px" />
    </form>
</body>
</html>

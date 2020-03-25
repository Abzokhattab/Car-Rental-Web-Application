<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createextras.aspx.cs" Inherits="db.WebForm36" %>

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
            width: 92px;
        }
        .auto-style4 {
            margin-left: 470px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Extra :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="184px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Rate&nbsp; :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="184px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="39px" OnClick="Button1_Click" Text="Create" Width="171px" />
    </form>
</body>
</html>

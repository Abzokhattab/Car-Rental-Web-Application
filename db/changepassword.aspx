<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="db.WebForm30" %>

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
            width: 162px;
        }
        .auto-style4 {
            margin-left: 448px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">E-mail :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="269px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">New Password:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="269px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="34px" OnClick="Button1_Click" Text="Change" Width="176px" />
    </form>
</body>
</html>

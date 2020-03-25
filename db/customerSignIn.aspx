<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerSignIn.aspx.cs" Inherits="db.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 179px;
        }
        .auto-style2 {
            font-size: x-large;
            width: 116px;
        }
        .auto-style3 {
            width: 116px;
        }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">Log in</span></h1>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="210px" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" OnTextChanged="TextBox2_TextChanged" Width="210px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Login" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletecar.aspx.cs" Inherits="db.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 113px;
        }
        .auto-style2 {
            width: 390px;
        }
        .auto-style3 {
            width: 390px;
            font-size: xx-large;
            height: 76px;
        }
        .auto-style4 {
            height: 76px;
        }
        .auto-style5 {
            margin-left: 391px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Car Id :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="302px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="25px" OnClick="Button1_Click" Text="Delete" Width="320px" />
    </form>
</body>
</html>

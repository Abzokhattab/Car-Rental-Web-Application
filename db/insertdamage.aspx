<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertdamage.aspx.cs" Inherits="db.WebForm15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            margin-left: 415px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Damage Descreption :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Damage Type :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Damage Price :</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Car ID :</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="insert" Width="285px" />
    </form>
</body>
</html>

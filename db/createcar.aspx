<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createcar.aspx.cs" Inherits="db.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            margin-left: 484px;
            margin-right: 44px;
            margin-top: 20px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 146px;
        }
        .auto-style6 {
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">License Plate :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Milage :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Rate :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">GPS Location :</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="28px" OnTextChanged="TextBox16_TextChanged" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">State :</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Motor :</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Class :</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Owner Ship :</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Model :</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="28px" OnTextChanged="TextBox21_TextChanged" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Brand :</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Price :</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Location ID :</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" Height="28px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Create" Width="266px" />
    </form>
</body>
</html>

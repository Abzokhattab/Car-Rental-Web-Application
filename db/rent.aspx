<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rent.aspx.cs" Inherits="db.WebForm32" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            margin-left: 478px;
        }
        .auto-style4 {
            width: 138px;
            height: 36px;
        }
        .auto-style5 {
            height: 36px;
        }
        .auto-style6 {
            width: 138px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            width: 138px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
        .auto-style10 {
            width: 138px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Start Date :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="165px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">End Date :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Car ID :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Card Number :</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Card Expery Date :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Insuranse ID :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Extras ID </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"> </td>
                <td class="auto-style11">
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="38px" OnClick="Button1_Click" Text="Rent" Width="147px" />
    </form>
</body>
</html>

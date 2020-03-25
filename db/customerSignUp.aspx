<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerSignUp.aspx.cs" Inherits="db.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: larger;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 142px;
        }
        .auto-style4 {
            width: 142px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 142px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            margin-left: 413px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Sign up</span></h1>
        <p>
&nbsp;&nbsp;&nbsp;
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Width="195px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Age</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" Width="195px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="195px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Driving License</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Class of interest</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox7" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Sign up" Width="92px" OnClick="Button1_Click" OnCommand="Button1_Command" />
    </form>
</body>
</html>

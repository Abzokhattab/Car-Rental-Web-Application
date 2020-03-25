<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createinsurance.aspx.cs" Inherits="db.WebForm14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 105px;
        }
        .auto-style3 {
            margin-left: 342px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Coverage :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">InsuranceType :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="194px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="create" Width="187px" />
    </form>
</body>
</html>

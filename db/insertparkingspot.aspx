<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertparkingspot.aspx.cs" Inherits="db.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 226px;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            width: 104px;
            height: 58px;
        }
        .auto-style4 {
            height: 58px;
        }
        .auto-style5 {
            margin-left: 464px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Location ID :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="313px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Create" Width="268px" />
    </form>
</body>
</html>

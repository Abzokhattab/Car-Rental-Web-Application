<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewquestions.aspx.cs" Inherits="db.WebForm17" %>

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
            width: 115px;
        }
        .auto-style3 {
            width: 115px;
        }
        .auto-style4 {
            margin-left: 426px;
        }
        .auto-style5 {
            margin-top: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Car Id :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="291px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="View" Width="198px" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarRentalDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="viewQuestions" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="car_ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" DataKeyNames="Question_ID" DataSourceID="SqlDataSource1" Width="231px">
            <Columns>
                <asp:BoundField DataField="Question_ID" HeaderText="Question_ID" InsertVisible="False" ReadOnly="True" SortExpression="Question_ID" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" SortExpression="Car_ID" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

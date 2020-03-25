<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="db.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/createcar.aspx">Insert a car</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/deletecar.aspx">Delete a Car</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/changecarstat.aspx">Change  car State</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/insertparkingspot.aspx">Insert Parking Spot</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/insertdamage.aspx">Insert Damage</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/insertlocation.aspx">Insert Location</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/createinsurance.aspx">Insert Insurance</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/viewcardmg.aspx">View Damage</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="~/viewquestions.aspx">View Questions</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click" PostBackUrl="~/viewcusomers.aspx">View Customers</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="~/viewspeceficcustomer.aspx">View Specefic Customer</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/viewspeceficinsurnce.aspx">View Specefic Insurance</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton13" runat="server" PostBackUrl="~/viewspeceficlocation.aspx">View Speefic Location</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton14" runat="server" PostBackUrl="~/viewspeceficparkingspot.aspx">View Specefic Parking Spot </asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click" PostBackUrl="~/viewspeceficrental.aspx">View Specefic Rental</asp:LinkButton>
        &nbsp;&nbsp;
        </p>
        <p>
            <asp:LinkButton ID="LinkButton17" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/viewallcars.aspx">View all cars</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton21" runat="server" PostBackUrl="~/viewrentals.aspx">View rentals</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton18" runat="server" PostBackUrl="~/viewallinsurances.aspx">View all Insurances</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton16" runat="server" PostBackUrl="~/renewlicense.aspx">Renew License</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton19" runat="server" PostBackUrl="~/sendcartomaintenance.aspx">Send Car to Maintenance</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton20" runat="server" PostBackUrl="~/createextras.aspx">Create Extras</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton22" runat="server" PostBackUrl="~/viewextras.aspx">View all Extras</asp:LinkButton>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonationView.aspx.cs" Inherits="DonationView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 612px;
            width: 1251px;
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 295px;
        }
        .auto-style2 {
            width: 96%;
            margin-top: 28px;
        }
        .auto-style4 {
            margin-left: 1049px;
        }
        .auto-style5 {
            height: 305px;
            width: 1462px;
        }
        .auto-style8 {
            height: 305px;
            width: 24px;
        }
        .auto-style9 {
            width: 24px;
        }
        .auto-style10 {
            width: 1462px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Registration Records" CssClass="auto-style4" Height="35px" />
                &nbsp;
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistConnectionString %>" SelectCommand="SELECT * FROM [DONATION]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="DONATION RECORD"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" />
                    <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
                    <asp:BoundField DataField="DONOR_COMMENT" HeaderText="DONOR_COMMENT" SortExpression="DONOR_COMMENT" />
                    <asp:BoundField DataField="DONATION_AMOUNT" HeaderText="DONATION_AMOUNT" SortExpression="DONATION_AMOUNT" />
                    <asp:BoundField DataField="DATE_OF_DONATION" HeaderText="DATE_OF_DONATION" SortExpression="DATE_OF_DONATION" />
                    <asp:BoundField DataField="PAYMENT_METHOD" HeaderText="PAYMENT_METHOD" SortExpression="PAYMENT_METHOD" />
                    <asp:BoundField DataField="REFERENCE_NO" HeaderText="REFERENCE_NO" SortExpression="REFERENCE_NO" />
                </Columns>
            </asp:GridView>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>

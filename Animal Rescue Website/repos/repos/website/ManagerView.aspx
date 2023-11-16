<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerView.aspx.cs" Inherits="ManagerView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistConnectionString %>" SelectCommand="SELECT * FROM [REGIST]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="REGISTRATION RECORDS"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERNAME" DataSourceID="SqlDataSource1" Width="969px">
                <Columns>
                    <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" ReadOnly="True" SortExpression="USERNAME" />
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="IDENTITY_NO" HeaderText="IDENTITY_NO" SortExpression="IDENTITY_NO" />
                    <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                    <asp:BoundField DataField="REFERENCE_NO" HeaderText="REFERENCE_NO" SortExpression="REFERENCE_NO" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

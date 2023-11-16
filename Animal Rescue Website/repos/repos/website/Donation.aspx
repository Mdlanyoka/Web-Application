<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Donation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            font-weight: bold;
            text-align: right;
            width: 354px;
            height: 49px;
            margin-left: 40px;
        }
        .auto-style7 {
            width: 354px;
        }
        .auto-style8 {
            width: 162px;
        }
        .auto-style18 {
            text-align: right;
            width: 354px;
            height: 57px;
        }
        .auto-style19 {
            width: 162px;
            height: 57px;
        }
        .auto-style20 {
            height: 57px;
        }
        .auto-style27 {
            height: 47px;
            text-align: right;
            width: 354px;
        }
        .auto-style28 {
            height: 47px;
            width: 162px;
        }
        .auto-style29 {
            height: 47px;
        }
        .auto-style30 {
            height: 48px;
            text-align: right;
            width: 354px;
        }
        .auto-style31 {
            height: 48px;
            width: 162px;
        }
        .auto-style32 {
            height: 48px;
        }
        .auto-style33 {
            height: 50px;
            text-align: right;
            width: 354px;
        }
        .auto-style34 {
            height: 50px;
            width: 162px;
        }
        .auto-style35 {
            height: 50px;
        }
        .auto-style36 {
            height: 51px;
            text-align: right;
            width: 354px;
        }
        .auto-style37 {
            height: 51px;
            width: 162px;
        }
        .auto-style38 {
            height: 51px;
        }
        .auto-style39 {
            height: 49px;
            text-align: right;
            width: 354px;
        }
        .auto-style40 {
            height: 49px;
            width: 162px;
        }
        .auto-style41 {
            height: 49px;
        }
        .auto-style42 {
            width: 354px;
            height: 30px;
        }
        .auto-style43 {
            width: 162px;
            height: 30px;
        }
        .auto-style44 {
            height: 30px;
        }
        .auto-style45 {
            width: 354px;
            text-align: right;
            height: 23px;
        }
        .auto-style46 {
            width: 354px;
            height: 23px;
        }
        .auto-style47 {
            width: 162px;
            height: 23px;
        }
        .auto-style48 {
            height: 23px;
        }
        .auto-style49 {
            text-align: left;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td colspan="2" align="center" class="auto-style44">
                <h2 class="auto-style4">Donation Page</h2></td>
                <td class="auto-style49">
                    </td>
                <td class="auto-style44">
                    <asp:Label ID="lbluser" runat="server" Text="Label1" style="position: relative"></asp:Label>
                </td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    First Name:</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextFirstName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFirstName" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style41">Our<br />
                    Banking Details<br />
                    Absa 1019887633</td>
            </tr>
            <tr>
                <td class="auto-style36">Last Name <b>:</b></td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style38">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextLastName" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">E-mail Address<b>:</b></td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="*Invalid Email Address" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">Phone N<b>umber:</b></td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextPhone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style38">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPhone" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Do<b>nor Comment:</b></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextDonor" runat="server" Height="48px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextDonor" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">Donation Amount<b>:</b></td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextAmout" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextAmout" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Date <b>Of Donation:</b></td>
                <td class="auto-style31">
                    <asp:TextBox ID="TextDate" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style32">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextDate" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Payment Method<b>:</b></td>
                <td class="auto-style28">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select Method</asp:ListItem>
                        <asp:ListItem>PayPal</asp:ListItem>
                        <asp:ListItem>Card</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style29">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">Reference</td>
                <td class="auto-style47">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style48"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43">
                    &nbsp;</td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style46"></td>
                <td class="auto-style47">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#666666" Font-Size="Large" Height="37px" Width="100px" />
                </td>
                <td class="auto-style48"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 671px;
        }
        .auto-style8 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 48px;
        }
        .auto-style11 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 47px;
        }
        .auto-style12 {
            height: 47px;
        }
        .auto-style13 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 55px;
        }
        .auto-style14 {
            height: 55px;
        }
        .auto-style15 {
            height: 61px;
        }
        .auto-style16 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 61px;
        }
        .auto-style17 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 40px;
        }
        .auto-style18 {
            height: 40px;
        }
        .auto-style19 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 51px;
        }
        .auto-style20 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 43px;
        }
        .auto-style21 {
            height: 47px;
            width: 86px;
        }
        .auto-style22 {
            height: 55px;
            width: 86px;
        }
        .auto-style23 {
            height: 61px;
            width: 86px;
        }
        .auto-style24 {
            height: 40px;
            width: 86px;
        }
        .auto-style25 {
            margin-left: 1px;
        }
        .auto-style26 {
            width: 409px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style27 {
            width: 86px;
        }
        .auto-style28 {
            width: 92px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>

            <td colspan="2" align="center">
                <h2 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration Page</h2></td>

        </tr>
        <tr>
            <td class="auto-style19">
                First Name:</td>
                <td class="auto-style21">
                <asp:TextBox ID="TextFirst" runat="server" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFirst" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style20">
                Last Name:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextLast" runat="server" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextLast" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                Identity Number:</td>
            <td class="auto-style21">
                <asp:TextBox ID="TextID" runat="server" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextID" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
           
        </tr>
        <tr>
            <td class="auto-style11">
                Email Address:</td>
            <td class="auto-style21">
                <asp:TextBox ID="TextAddress" runat="server" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextAddress" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextAddress" ErrorMessage=" *Invalid Email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style13">
                Contact Number:</td>
            <td class="auto-style22">
                <asp:TextBox ID="TextContact" runat="server" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextContact" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style16">
                Username:</td>
            <td class="auto-style23">
                <asp:TextBox ID="TextUser" runat="server" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextUser" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style17">
                <br />
                Gender:</td>
            <td class="auto-style24">
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="120px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style26">
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Password: </td>
            <td class="auto-style27">
                <br />
                <asp:TextBox ID="TextPass" runat="server" OnTextChanged="TextPass_TextChanged" TextMode="Password" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextUser" ErrorMessage="*Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style17">
                Confirm Password:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextConfirm" runat="server" TextMode="Password" Height="24px" Width="183px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextConfirm" ErrorMessage="*Password does not match" ForeColor="#CC0000" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style24">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Text="Submit" Width="92px" OnClick="Button1_Click" BackColor="#999999" Font-Bold="True" Font-Size="Large" />
            </td>
            <td>
                <input id="Reset1" class="auto-style28" style="font-size: large; font-weight: bold; background-color: #C0C0C0" type="reset" value="Reset" /></td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>

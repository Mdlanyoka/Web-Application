<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="Style.css" rel="stylesheet" />
</head>
<body>
     
    <div class="loginbox" >
        <img src="image1.png" alt="Alternate Text" class="user"/>
        <h2>Log In Here</h2>

        <form runat="server">
<asp:Label Text="Username" CssClass="lblemail" runat="server" />
            <asp:TextBox ID="TextUser" runat="server" CssClass="txtUsername" Height="25px" Width="238px"></asp:TextBox>
            <br />
            <br />
<asp:Label Text="Password" CssClass="lblpass" runat="server" />
            <asp:TextBox ID="TextPass" runat="server" CssClass="txtPassword" Height="25px" Width="238px"></asp:TextBox>
            <br />
            <br />
            <br />
<asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" OnClick="Unnamed5_Click1" />
<asp:LinkButton Text="Forgot Password" CssClass="btnforgot" runat="server" OnClick="Unnamed4_Click" />

<asp:LinkButton Text="" CssClass="" runat="server" />
          
            <br />
          
<asp:Label Text="First time user click" CssClass="lblnote" runat="server" />
<asp:LinkButton Text="Register" CssClass="btnregister" runat="server" OnClick="Unnamed7_Click" />
        </form>
    </div>
    <p>
        <a href="javascript:__doPostBack('LinkButton1','')">About</a></p>
</body>
</html>

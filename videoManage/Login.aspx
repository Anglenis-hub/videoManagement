<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="loginCss.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="out">
            <p>Log in</p>
            <div class="lableDiv">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" CssClass="label1Css" BorderWidth="1px" Font-Size="13px" BackColor="#ffe3e6" BorderColor="#ecbcbf"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
            <div id="bigDiv">
                <div id="smallDiv">
                    <div class="txtDiv">
                        <span class="txtSpan">Tel</span><br /><asp:TextBox ID="txtTel" runat="server" CssClass="txtBox"></asp:TextBox><br />
                    </div>
                    <div class="txtDiv">
                        <span class="txtSpan">Password</span><br /><asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox"></asp:TextBox>
                    </div>
                    <asp:Button ID="LoginBtn" runat="server" Text="Log in" OnClick="LoginBtn_Click" CssClass="SignFlow-submitButton" BackColor="#2ea44f" ForeColor="White"/><br />
                    <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" OnClick="LinkButton1_Click" CssClass="linkBtn">New friend? Create an account.</asp:LinkButton>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

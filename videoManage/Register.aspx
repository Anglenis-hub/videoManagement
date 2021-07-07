<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="registerCss.css" type="text/css" />    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="out">
            <p>Sign up</p>
            <div class="lableDiv">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" CssClass="label1Css" BorderWidth="1px" Font-Size="13px" BackColor="#ffe3e6" BorderColor="#ecbcbf"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
            
            <div id="bigDiv">
                <div id="smallDiv">
                    <div class="txtDiv">
                        <span class="txtSpan">Tel</span><br /><asp:TextBox ID="txtTel" runat="server" CssClass="txtBox" AutoPostBack="True" OnTextChanged="txtTel_TextChanged"></asp:TextBox><br />
                    </div>
                    <div class="txtDiv">
                        <span class="txtSpan">Name</span><br /><asp:TextBox ID="txtName" runat="server" CssClass="txtBox" AutoPostBack="True" OnTextChanged="txtName_TextChanged"></asp:TextBox>
                    </div>
                    <div class="txtDiv">
                        <span class="txtSpan">Password</span><br /><asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox" AutoPostBack="True" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                    </div>
                    <asp:Button ID="SignupBtn" runat="server" Text="Sign up" CssClass="SignFlow-submitButton" BackColor="#2ea44f" ForeColor="White" OnClick="SignupBtn_Click"/><br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="videoHomePage.aspx.cs" Inherits="videoHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="videoHomePageCss.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="bigNavigation">
            <div class="navigation">
                <span>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkBtn" ForeColor="White">电影</asp:LinkButton>
                </span> &nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkBtn" ForeColor="White">美妆</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="linkBtn" ForeColor="White">vlog</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="linkBtn" ForeColor="White">美食</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="linkBtn" ForeColor="White">情侣</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton6" runat="server" CssClass="linkBtn" ForeColor="White">明星</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton7" runat="server" CssClass="linkBtn" ForeColor="White">孩子</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton8" runat="server" CssClass="linkBtn" ForeColor="White">学习</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton9" runat="server" CssClass="linkBtn" ForeColor="White">减肥</asp:LinkButton>
                </span>&nbsp;&nbsp;
                <span>
                    <asp:LinkButton ID="LinkButton10" runat="server" CssClass="linkBtn" ForeColor="White">穿搭</asp:LinkButton>
                </span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox"></asp:TextBox>
                &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/search.png" Height="50px" Width="50px" />
                <asp:Button ID="postBtn" runat="server" Text="发布" CssClass="postBtn" BackColor="#FB7299" BorderColor="#FB7299" />
                <asp:Button ID="SignIn" runat="server" Text="注册" BackColor="CadetBlue" BorderColor="Black" CssClass="signin" BorderWidth="1px" />
                <asp:Button ID="SignOut" runat="server" Text="登录" BackColor="CadetBlue" BorderColor="Black" CssClass="login" BorderWidth="1px" />
            </div>
        </div>
    </form>
</body>
</html>

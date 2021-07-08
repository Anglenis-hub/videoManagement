<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Set.aspx.cs" Inherits="Set" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="setCss.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Test %>" SelectCommand="SELECT * FROM [userFavoredType]"></asp:SqlDataSource>
        <div id="out">
            <div id="bigDiv">
                <div class="headimg"><asp:ImageButton ID="headImageBtn" ImageUrl="~/headImg.jfif" Width="50px" Height="50px" runat="server" OnClick="headImageBtn_Click"  />
                    
                </div>
                <div class="info">
                    <p style="text-align:center;margin-top:10px;">用户头像</p>  
                    昵称&nbsp;<asp:TextBox ID="txtName" runat="server" CssClass="txtBox" AutoPostBack="True" OnTextChanged="txtName_TextChanged"></asp:TextBox><br /><br />
                    性别&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="sexRadioButtonList" runat="server" RepeatDirection="Horizontal" style="display:inline" AutoPostBack="True" OnSelectedIndexChanged="sexRadioButtonList_SelectedIndexChanged">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="sexLabel" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                    <br /><br />
                    生日&nbsp;<asp:TextBox ID="txtBirth" runat="server" CssClass="txtBox"></asp:TextBox> <br />
                    <div class="canlendarDiv">
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" CssClass="canlendar" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </div>
                    <br />喜欢的类型&nbsp;&nbsp;&nbsp;<asp:Label ID="noSelectionLabel" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                    <div class="marginTop"><asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="userFavoredType" DataValueField="userFavoredType" RepeatColumns="4" RepeatDirection="Horizontal" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="True"></asp:CheckBoxList></div>
                    <asp:Label ID="likedTypeLabel" runat="server" Text="Label" Visible="False" ></asp:Label>
                    <br /><br /><asp:Button ID="saveBtn" runat="server" Text="保存" CssClass="saveCancelBtn" OnClick="saveBtn_Click" />
                    <asp:Button ID="cancelBtn" runat="server" Text="取消" CssClass="cancelCancelBtn" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

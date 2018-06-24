<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户登录</title>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;
    &nbsp;&nbsp;
        <table style="background-image: url(igm/总登录页面.jpg); width: 456px; height: 296px; margin: 0 auto;">
            <tr>
                <td align="right" style="width: 443px; height: 132px">
                </td>
                <td style="width: 123px; height: 132px">
                </td>
                <td align="left" style="width: 114px; height: 132px">
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 443px">
                    <asp:Label ID="labUserName" runat="server" Font-Size="9pt" Text="学生证号"></asp:Label></td>
                <td style="font-size: 12pt; width: 123px">
                    <asp:TextBox ID="txtUserName" runat="server" Width="120px"></asp:TextBox></td>
                <td align="left" style="font-size: 12pt; width: 114px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="请输入密码！"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                        Display="Dynamic" ErrorMessage="请输入用户名！"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="width: 443px; height: 37px">
                    <asp:Label ID="labPwd" runat="server" Font-Size="9pt" Text="密码"></asp:Label></td>
                <td style="width: 123px; height: 37px">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                <td align="left" style="width: 114px; height: 37px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 443px; height: 19px">
                    <asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="验证码"></asp:Label></td>
                <td style="width: 123px; height: 19px">
                    <asp:TextBox ID="txtValidate" runat="server" Width="76px"></asp:TextBox>
                    <asp:Label ID="labValidate" runat="server" BackColor="#C0C0FF" ForeColor="Red" Text="Label"></asp:Label></td>
                <td align="left" style="width: 114px; height: 19px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtValidate"
                        Display="Dynamic" ErrorMessage="请输入验证码！"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="width: 443px; height: 47px;position: relative; right: 50px;">
                    <asp:Label ID="Label5" runat="server" Text="请选择登录身份："></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="63px">
                        <asp:ListItem Value="学生">学生</asp:ListItem>
                        <asp:ListItem Value="教师">教师</asp:ListItem>
                        <asp:ListItem Value="管理员">管理员</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 123px; height: 47px">
                    <asp:Button ID="btnLogin" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                        Text="登录" /><asp:Button ID="btnZhunce" runat="server" CausesValidation="False" Font-Size="9pt"
                            OnClick="btnZhunce_Click" Text="注册" /><asp:Button ID="btnPwd" runat="server" CausesValidation="False"
                                Font-Size="9pt" OnClick="Button3_Click" Text="忘密" />
                    &nbsp;&nbsp;
                </td>
                <td rowspan="1" style="width: 114px; height: 47px"><asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="8pt" Height="24px"
            ShowMessageBox="True" ShowSummary="False" Width="112px" />
                </td>
            </tr>
        </table>
        <div style="width: 118px; margin: 20px auto; height: 22px;">
            <asp:Button ID="Button1" runat="server" Text="初始化数据库" OnClick="Button1_Click1" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [chengji_chaxun_view]"></asp:SqlDataSource>
    </form>
</body>
</html>

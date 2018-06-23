<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoPwddd.aspx.cs" Inherits="InfoPwddd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        </div>
        <table align="center" style="background-image: url(igm/找回密码.jpg); width: 800px; height: 236px;
            text-align: center">
            <tr>
                <td colspan="1" style="width: 54px; height: 272px">
                </td>
                <td colspan="2" style="width: 664px; height: 272px">
                </td>
            </tr>
            <tr>
                <td colspan="1" style="width: 54px; height: 32px">
                </td>
                <td colspan="2" style="width: 664px; height: 32px">
                    <asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Red" Text="成功找回密码"></asp:Label>&nbsp;
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="1" rowspan="2" style="vertical-align: top; width: 54px; height: 275px">
                </td>
                <td colspan="2" rowspan="2" style="vertical-align: top; width: 664px; height: 275px">
                    <table style="margin: 0 auto; position: relative; left: -50px;">
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="学生编号"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtStuID" runat="server" Width="130px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label3" runat="server" Font-Size="9pt" Text="密 码"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtStuPwd" runat="server" Width="130px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                                <asp:Button ID="btnToIndex" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="返回登录主页面" Width="106px" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    </form>
</body>
</html>

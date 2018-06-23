<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoPwdd.aspx.cs" Inherits="InfoPwdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table align="center" style="background-image: url(igm/找回密码.jpg); width: 796px; height: 314px;
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
                    <asp:Label ID="Label1" runat="server" Font-Size="9pt" ForeColor="Red" Text="填写以下注册资料找回密码！"></asp:Label>&nbsp;
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="1" rowspan="2" style="vertical-align: top; width: 54px; height: 275px">
                </td>
                <td colspan="2" rowspan="2" style="vertical-align: top; width: 664px; height: 275px">
                    <table style="margin: 0 auto;">
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="密码提示问题"></asp:Label></td>
                            <td align="left" style="width: 100px">
                                <asp:Label ID="labQuePwd" runat="server" Font-Size="9pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label3" runat="server" Font-Size="9pt" Text="提示问题答案"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtAnsPwd" runat="server" Width="130px"></asp:TextBox></td>
                            <td align="left" style="width: 100px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnsPwd"
                                    ErrorMessage="请输入问题答案"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                                <asp:Button ID="btnSubmit" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="确定" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True"
                        ShowSummary="False" Width="112px" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
       </div>
    </form>
</body>
</html>

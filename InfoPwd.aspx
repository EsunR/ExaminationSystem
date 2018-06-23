<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoPwd.aspx.cs" Inherits="HouAdmin_InfoPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        &nbsp;</div>
        <table style="width: 800px; height: 216px; text-align: center; background-image: url(igm/找回密码.jpg);" align="center">
            <tr>
                <td colspan="1" style="width: 54px; height: 246px">
                </td>
                <td colspan="2" style="width: 664px; height: 246px">
                </td>
            </tr>
            <tr>
                <td colspan="1" style="width: 54px; height: 32px">
                </td>
                <td colspan="2" style="width: 664px; height: 32px">
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Size="9pt" ForeColor="Red" Text="填写以下注册资料找回密码！"></asp:Label></td>
            </tr>
            <tr style="color: #000000">
                <td colspan="1" rowspan="2" style="vertical-align: top; width: 54px; height: 275px">
                </td>
                <td colspan="2" rowspan="2" style="vertical-align: top; width: 664px; height: 275px">
                    <table style="margin: 0 auto;">
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="学生证号"></asp:Label></td>
                            <td style="width: 122px">
                                <asp:TextBox ID="txtStuID" runat="server" Width="130px"></asp:TextBox></td>
                            <td align="left" style="width: 96px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStuID"
                                    ErrorMessage="请输入学生证号"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtStuID"
                                    ErrorMessage="请输入数字" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStuID"
                                    ErrorMessage="学生编号为11位有效数字" ValidationExpression="^.{11}$"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 122px">
                                &nbsp;<asp:Button ID="btnSubmit" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="确定" /></td>
                            <td rowspan="3" style="width: 96px">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True"
                                    ShowSummary="False" Width="112px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 122px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 122px">
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="Label1" runat="server" Font-Size="9pt" ForeColor="Red" Text="填写以下注册资料找回密码！"></asp:Label></td>
            </tr>
            <tr>
            </tr>
        </table>
    </form>
</body>
</html>

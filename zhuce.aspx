<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>注册</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center"> 
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <table style="background-image: url(igm/学生注册.jpg); width: 801px; height: 566px; margin:0 auto;">
            <tr>
                <td colspan="4" style="vertical-align: bottom; height: 74px; text-align: center">
                </td>
            </tr>
            <tr>
                <td colspan="4" style="vertical-align: bottom; height: 78px; text-align: center">
                </td>
            </tr>
            <tr>
                <td colspan="4" style="vertical-align: bottom; height: 31px; text-align: center">
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="vertical-align: bottom; text-align: center; height: 11px;">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4" rowspan="1" style="height: 3px">
                    <asp:Label ID="Label4" runat="server" Font-Size="11pt" ForeColor="Red" Text="考生注册信息"
                        Width="117px"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="4" style="height: 359px">
                    <table align="center" style="width: 290px">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labStuID" runat="server" Font-Size="9pt" Text="学生证号："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:TextBox ID="txtStuID" runat="server" Font-Size="9pt" Width="120px"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStuID"
                                    ErrorMessage="学生证号不允许为空">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStuID"
                                    ErrorMessage="学生编号为11位有效数字" ValidationExpression="^.{11}$" Width="1px">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" Font-Size="10pt"
                                    OnClick="Button1_Click1" Text="检测注册号" />
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="该号已存在!" Width="142px"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Font-Size="9pt" Text="无该号,可以注册！" Width="145px"></asp:Label></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labStuName" runat="server" Font-Size="9pt" Text="学生姓名："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:TextBox ID="txtStuName" runat="server" Font-Size="9pt" Width="120px"></asp:TextBox></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labStuPwd" runat="server" Font-Size="9pt" Text="密 码："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:TextBox ID="txtStuPwd" runat="server" Font-Size="9pt" TextMode="Password" Width="120px"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStuPwd"
                                    ErrorMessage="密码不允许为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labStuFPwd" runat="server" Font-Size="9pt" Text="重复密码："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:TextBox ID="txtStuFPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtStuPwd"
                                    ControlToValidate="txtStuFPwd" ErrorMessage="密码不一致">*</asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labQuePwd" runat="server" Font-Size="9pt" Text="密码问题："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="9pt" Width="145px"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtQuePwd"
                                    ErrorMessage="请输入密码提示问题">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labAnsPwd" runat="server" Font-Size="9pt" Text="问题答案："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="9pt" Width="145px"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAnsPwd"
                                    ErrorMessage="请输入提示问题答案">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labSex" runat="server" Font-Size="9pt" Text="性 别："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:DropDownList ID="ddlSex" runat="server" Font-Size="9pt" Width="100px">
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="labProfession" runat="server" Font-Size="9pt" Text="所学专业："></asp:Label></td>
                            <td align="left" colspan="2" style="width: 154px">
                                <asp:DropDownList ID="ddlProfession" runat="server" Font-Size="9pt" Width="130px">
                                </asp:DropDownList></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 24px;">
                            </td>
                            <td style="width: 100px; height: 24px;">
                            </td>
                            <td colspan="2" style="width: 154px; height: 24px;">
                                <asp:Button ID="btnDeclare" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="注册" Width="45px" />
                                <asp:Button ID="btnClear" runat="server" CausesValidation="False" Font-Size="9pt"
                                    OnClick="Button2_Click" Text="重置" Width="45px" />
                                <asp:Button ID="btnClose" runat="server" CausesValidation="False" Font-Size="9pt"
                                    OnClick="Button3_Click" Text="关闭" Width="45px" /></td>
                            <td style="width: 100px; height: 24px;">
                    <asp:Label ID="Label1" runat="server" Text="成功！" Width="51px" Font-Size="10pt"></asp:Label></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True"
                        ShowSummary="False" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 221px; height: 15px;">
                </td>
                <td style="width: 100px; height: 15px;">
                </td>
                <td style="width: 118px; height: 15px;">
                </td>
                <td style="width: 100px; height: 15px;">
                </td>
            </tr>
        </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>

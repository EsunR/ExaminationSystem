<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminInsert.aspx.cs" Inherits="HouAdmin_AdminInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 954px; height: 621px">
            <tr>
                <td colspan="3" style="height: 82px">
                    &nbsp;<br />
                </td>
                <td colspan="1" style="height: 82px">
                </td>
            </tr>
            <tr>
                <td style="width: 183px; height: 152px; text-align: left">
                    &nbsp;
                </td>
                <td style="vertical-align: top; width: 76px; text-align: left">
                    <asp:TreeView ID="TreeView2" runat="server" ImageSet="Faq" OnSelectedNodeChanged="TreeView2_SelectedNodeChanged">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px"
                            VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/admin.aspx" Text="管理员" Value="新建节点">
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/zhuce_stu.aspx" Text="管理注册学生"
                                Value="管理注册学生"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/zhuanye_xinxi.aspx" Text="管理专业信息"
                                Value="管理专业信息"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/kecheng_xinxi.aspx" Text="管理课程信息"
                                Value="管理课程信息"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/taoti_xinxi.aspx" Text="管理套题信息"
                                Value="管理套题信息"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/HouAdmin/kaosheng_chengji.aspx" Text="管理考生成绩" Value="管理考生成绩">
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/kaoshi_timu.aspx" Text="管理考试题目"
                                Value="管理考试题目"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/insert_shiti.aspx" Text="添加试题"
                                Value="添加试题"></asp:TreeNode>
                            <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="DarkBlue" HorizontalPadding="5px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 462px">
                    <table>
                        <tr>
                            <td align="right" style="width: 100px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="管理员名称"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtAdminName" runat="server" Width="130px"></asp:TextBox></td>
                            <td align="left" style="width: 27px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminName"
                                    ErrorMessage="用户名不允许为空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="管理员密码"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtAdminPwd" runat="server" Width="130px" TextMode="Password"></asp:TextBox></td>
                            <td align="left" style="width: 27px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminPwd"
                                    ErrorMessage="请输入密码"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td align="center" style="width: 100px; text-align: center">
                                <asp:Button ID="btnAdd" runat="server" Font-Size="9pt" OnClick="Button1_Click" Text="添加" />
                                <asp:Button ID="btnBack" runat="server" CausesValidation="False" Font-Size="9pt"
                                    OnClick="Button2_Click" Text="返回" /></td>
                            <td align="left" colspan="1" rowspan="2" style="width: 27px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td align="center" style="width: 100px">
                            </td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True"
                        ShowSummary="False" />
                    &nbsp;&nbsp;
                </td>
                <td style="width: 462px">
                </td>
            </tr>
            <tr>
                <td style="width: 183px; height: 152px; text-align: left">
                </td>
                <td style="vertical-align: top; width: 76px; text-align: left">
                </td>
                <td style="width: 462px">
                </td>
                <td style="width: 462px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

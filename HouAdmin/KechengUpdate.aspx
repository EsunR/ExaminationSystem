<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KechengUpdate.aspx.cs" Inherits="HouAdmin_KechengUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 978px; height: 616px">
            <tr>
                <td colspan="3" style="height: 61px">
                    &nbsp;<br />
                </td>
                <td colspan="1" style="height: 61px">
                </td>
            </tr>
            <tr>
                <td style="width: 303px; height: 152px; text-align: left">
                    &nbsp;</td>
                <td style="vertical-align: top; width: 128px; height: 152px; text-align: left">
                    &nbsp;
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" NodeIndent="10" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"
                        ShowLines="True">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="#DD5555" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#DD5555" HorizontalPadding="0px"
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
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 729px; height: 152px">
                    <table>
                        <tr>
                            <td align="right" style="width: 100px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="课程名称："></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtLessName" runat="server" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="所属专业："></asp:Label></td>
                            <td style="width: 100px">
                                <asp:DropDownList ID="ddlProfession" runat="server" Font-Size="9pt" Width="132px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px; text-align: center">
                                <asp:Button ID="btnModify" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="修改" />
                                <asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="Button2_Click" Text="返回" /></td>
                        </tr>
                    </table>
                </td>
                <td style="width: 729px; height: 152px">
                </td>
            </tr>
            <tr>
                <td style="width: 303px; height: 152px; text-align: left">
                </td>
                <td style="vertical-align: top; width: 128px; height: 152px; text-align: left">
                </td>
                <td style="width: 729px; height: 152px">
                </td>
                <td style="width: 729px; height: 152px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

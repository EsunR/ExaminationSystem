<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaotiInsert.aspx.cs" Inherits="HouAdmin_TaotiInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 964px; height: 623px">
            <tr>
                <td align="center" colspan="3" style="height: 73px">
                    &nbsp;<br />
                </td>
                <td align="center" colspan="1" style="height: 73px">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 292px; height: 142px; text-align: center">
                    &nbsp;</td>
                <td align="center" style="vertical-align: top; width: 124px; height: 142px; text-align: left">
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Faq" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
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
                <td align="center" style="width: 729px; height: 142px">
                    <table>
                        <tr>
                            <td style="width: 100px; height: 26px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="套题名称"></asp:Label></td>
                            <td style="width: 118px; height: 26px">
                                <asp:TextBox ID="txtQueName" runat="server" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="所属课程"></asp:Label></td>
                            <td style="width: 118px">
                                <asp:DropDownList ID="ddlLesson" runat="server" Font-Size="9pt" Width="134px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 118px">
                                <asp:Button ID="btnAdd" runat="server" Font-Size="9pt" OnClick="Button1_Click" Text="添加" />
                                <asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="Button2_Click" Text="返回" /></td>
                        </tr>
                    </table>
                </td>
                <td align="center" style="width: 729px; height: 142px">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 292px; height: 152px; text-align: center">
                </td>
                <td align="center" style="vertical-align: top; width: 124px; height: 152px; text-align: left">
                </td>
                <td align="center" style="width: 729px; height: 152px">
                </td>
                <td align="center" style="width: 729px; height: 152px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

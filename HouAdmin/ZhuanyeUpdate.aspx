<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ZhuanyeUpdate.aspx.cs" Inherits="HouAdmin_ZhuanyeUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 982px; height: 620px">
            <tr>
                <td colspan="3" style="height: 83px">
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 304px; height: 152px; text-align: center">
                    &nbsp;</td>
                <td style="vertical-align: top; width: 129px; height: 152px; text-align: left">
                    &nbsp;
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" NodeIndent="10" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"
                        ShowLines="True">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="#DD5555" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#DD5555" HorizontalPadding="0px"
                            VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/admin.aspx" Text="管理员" Value="新建节点">
                                <asp:TreeNode NavigateUrl="~/HouAdmin/AdminInsert.aspx" Text="添加管理员" Value="新建节点"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/zhuce_stu.aspx" Text="管理注册学生"
                                Value="管理注册学生"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/zhuanye_xinxi.aspx" Text="管理专业信息"
                                Value="管理专业信息">
                                <asp:TreeNode NavigateUrl="~/HouAdmin/ZhuangyeInsert.aspx" Text="添加专业信息" Value="新建节点">
                                </asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/kecheng_xinxi.aspx" Text="管理课程信息"
                                Value="管理课程信息">
                                <asp:TreeNode NavigateUrl="~/HouAdmin/KechengInsert.aspx" Text="添加课程" Value="新建节点"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/taoti_xinxi.aspx" Text="管理套题信息"
                                Value="管理套题信息">
                                <asp:TreeNode NavigateUrl="~/HouAdmin/TaotiInsert.aspx" Text="添加套题" Value="新建节点"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/HouAdmin/kaosheng_chengji.aspx" Text="管理考生成绩" Value="管理考生成绩">
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/kaoshi_timu.aspx" Text="管理考试题目"
                                Value="管理考试题目">
                                <asp:TreeNode NavigateUrl="~/HouAdmin/KaoshiUpdate.aspx" Text="考试题目修改" Value="新建节点">
                                </asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/insert_shiti.aspx" Text="添加试题"
                                Value="添加试题">
                                <asp:TreeNode NavigateUrl="~/HouAdmin/InsertShiTi.aspx" Text="试题详细信息" Value="新建节点"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 729px; height: 152px">
                    &nbsp;
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="width: 100px; height: 25px">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="专业名称"></asp:Label></td>
                                    <td style="width: 108px; height: 25px">
                                        <asp:TextBox ID="txtProName" runat="server" Font-Size="9pt" Width="121px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 108px">
                                        <asp:Button ID="btnModify" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                            Text="修改" />
                                        <asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="Button2_Click" Text="返回" /></td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 729px; height: 152px">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 304px; height: 152px; text-align: center">
                </td>
                <td style="vertical-align: top; width: 129px; height: 152px; text-align: left">
                </td>
                <td style="width: 729px; height: 152px">
                </td>
                <td style="width: 729px; height: 152px">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 304px; height: 117px; text-align: center">
                </td>
                <td style="vertical-align: top; width: 129px; height: 117px; text-align: left">
                </td>
                <td style="width: 729px; height: 117px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

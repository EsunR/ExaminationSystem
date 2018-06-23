<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert_shiti.aspx.cs" Inherits="HouAdmin_insert_shiti" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 1014px; height: 618px">
            <tr>
                <td colspan="3" style="height: 13px">
                    &nbsp;<br />
                </td>
                <td colspan="1" style="height: 13px">
                </td>
            </tr>
            <tr>
                <td style="width: 160px; height: 152px; text-align: left">
                    &nbsp;
                </td>
                <td style="vertical-align: top; width: 67px; text-align: left">
                    &nbsp;
                    <br />
                    <br />
                    <br />
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Faq" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/admin.aspx" Text="管理员" Value="管理员">
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
                    &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table style="width: 244px; margin: 0 auto;position: relative; top: -100px;left: 100px;">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="1.选择考试专业 "></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 23px">
                                        <asp:DropDownList ID="ddlProfession" runat="server" AutoPostBack="True" Font-Size="9pt"
                                            OnSelectedIndexChanged="ddlProfession_SelectedIndexChanged" Width="150px">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="2.选择考试课程 "></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:DropDownList ID="ddlLesson" runat="server" AutoPostBack="True" Font-Size="9pt"
                                            OnSelectedIndexChanged="ddlLesson_SelectedIndexChanged" Width="150px">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label3" runat="server" Font-Size="10pt" Text="请先添加考试课程！" Visible="False"
                                            Width="215px"></asp:Label>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="3.选择套题名称 "></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 24px">
                                        <asp:DropDownList ID="ddlQueName" runat="server" Font-Size="9pt" Width="150px">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 24px">
                                        <asp:Label ID="Label5" runat="server" Text="请先添加考试套题！" Width="212px" Font-Size="10pt" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="btnSelect_Click"
                                            Text="选择" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="btnCancle" runat="server" Font-Size="9pt" OnClick="Button2_Click"
                                            Text="取消" /></td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp;&nbsp;
                </td>
                <td style="width: 462px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

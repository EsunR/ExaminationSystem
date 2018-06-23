<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="HouAdmin_admin000"  Theme="mytheme"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 992px; height: 621px">
            <tr>
                <td colspan="3" style="height: 83px">
                </td>
                <td colspan="1" style="height: 83px">
                </td>
            </tr>
            <tr>
                <td rowspan="2" style="width: 102px; text-align: center; height: 494px;">
                    &nbsp;</td>
                <td rowspan="2" style="vertical-align: top; width: 142px; text-align: left; height: 494px;">
                    &nbsp;<asp:TreeView ID="TreeView1" runat="server" Font-Size="11pt" Height="182px"
                        ImageSet="Faq" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Width="43px">
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
                <td rowspan="2" style="vertical-align: top; width: 100px; text-align: center; height: 494px;">
                    &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table width="550">
                                <tr>
                                    <td style="width: 2078px; height: 21px">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="查询条件"></asp:Label></td>
                                    <td style="width: 120px; height: 21px">
                                        <asp:DropDownList ID="ddlAdminName" runat="server" Font-Size="9pt" Width="107px">
                                            <asp:ListItem Value="Name">管理员名称</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 1080px; height: 21px">
                                        <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="关键字"></asp:Label></td>
                                    <td style="width: 260px; height: 21px">
                                        <asp:TextBox ID="txtSelect" runat="server" Font-Size="9pt" Width="100px" ForeColor="PeachPuff"></asp:TextBox></td>
                                    <td style="width: 279px; height: 21px">
                                        <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                            Text="查询" /></td>
                                    <td style="width: 1977px; height: 21px">
                                        <asp:LinkButton ID="LinkButton10" runat="server" Font-Size="9pt" Font-Underline="False"
                                            OnClick="LinkButton10_Click">添加管理员</asp:LinkButton></td>
                                </tr>
                            </table>
                            <asp:GridView ID="gvAdminInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Size="9pt" HorizontalAlign="Center" OnPageIndexChanging="GridView1_PageIndexChanging"
                                OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                                PageSize="5" Width="550px" SkinID="gvSkin">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="管理员名称">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PWD" HeaderText="管理员密码" />
                                    <asp:BoundField DataField="JoinTime" HeaderText="加入时间" />
                                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="admin_update.aspx?ID={0}"
                                        HeaderText="修改" Text="修改">
                                        <ControlStyle Font-Underline="False" />
                                        <FooterStyle Font-Underline="False" />
                                    </asp:HyperLinkField>
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                        <ControlStyle Font-Underline="False" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td rowspan="2" style="vertical-align: top; width: 100px; height: 494px; text-align: center">
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

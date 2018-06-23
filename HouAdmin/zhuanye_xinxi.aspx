<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuanye_xinxi.aspx.cs" Inherits="HouAdmin_zhuanye_xinxi"  Theme="mytheme"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 964px; height: 619px">
            <tr>
                <td colspan="3" style="height: 52px">
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td rowspan="2" style="vertical-align: top; width: 109px; text-align: center">
                    &nbsp;</td>
                <td rowspan="2" style="vertical-align: top; width: 89px; text-align: left">
                    &nbsp;<asp:TreeView ID="TreeView1" runat="server" ImageSet="Faq" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/admin.aspx" Text="管理员" Value="新建节点">
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/Teacher.aspx" Text="管理教师信息" Value="新建节点">
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/zhuce_stu.aspx" Text="管理注册学生"
                                Value="管理注册学生"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/zhuanye_xinxi.aspx" Text="管理专业信息"
                                Value="管理专业信息"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/HouAdmin/kecheng_xinxi.aspx" Text="管理课程信息"
                                Value="管理课程信息"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="../Default.aspx" Text="退出系统" Value="退出系统"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="DarkBlue" HorizontalPadding="5px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="vertical-align: top; width: 256px; height: 22px; text-align: center">
                   
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table width="550">
                                <tr>
                                    <td style="width: 2078px; height: 21px">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="查询条件"></asp:Label></td>
                                    <td style="width: 120px; height: 21px">
                                        <asp:DropDownList ID="ddlProName" runat="server" Font-Size="9pt" Width="107px">
                                            <asp:ListItem Value="Name">专业名称</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 1080px; height: 21px">
                                        <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="关键字"></asp:Label></td>
                                    <td style="width: 260px; height: 21px">
                                        <asp:TextBox ID="txtSelect" runat="server" Font-Size="9pt" Width="100px"></asp:TextBox></td>
                                    <td style="width: 279px; height: 21px">
                                        <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                            Text="查询" /></td>
                                    <td style="width: 1977px; height: 21px">
                                        <asp:LinkButton ID="lbAddPro" runat="server" Font-Size="9pt" Font-Underline="False"
                                            OnClick="LinkButton10_Click">添加专业</asp:LinkButton></td>
                                </tr>
                            </table>
                            <asp:GridView ID="gvProInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Size="9pt" OnPageIndexChanging="GridView1_PageIndexChanging"
                                OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                                PageSize="5" Width="594px" SkinID="gvSkin">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="专业名称" />
                                    <asp:BoundField DataField="JoinTime" HeaderText="加入时间" />
                                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ZhuanyeUpdate.aspx?ID={0}"
                                        HeaderText="修改" Text="修改" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td style="width: 256px; height: 70px">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

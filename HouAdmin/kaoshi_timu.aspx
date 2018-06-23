<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kaoshi_timu.aspx.cs" Inherits="HouAdmin_kaoshi_timu" Theme="mytheme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 986px; height: 619px">
            <tr>
                <td colspan="5" style="height: 67px">
                    &nbsp;<br />
                </td>
                <td colspan="1" style="height: 67px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td align="center" rowspan="2" style="width: 94px; text-align: center">
                    &nbsp;
                </td>
                <td align="center" rowspan="2" style="width: 178px; text-align: center">
                </td>
                <td rowspan="2" style="vertical-align: top; width: 48px; text-align: left">
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
                <td align="center" style="vertical-align: top; width: 76px; height: 11px; text-align: center">
                </td>
                <td align="center" style="vertical-align: top; width: 256px; height: 11px; text-align: center">
                
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table width="550">
                                <tr>
                                    <td style="width: 2078px; height: 21px">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="查询条件"></asp:Label></td>
                                    <td style="width: 120px; height: 21px">
                                        <asp:DropDownList ID="ddlType" runat="server" Font-Size="9pt" Width="107px">
                                            <asp:ListItem Value="que_subject">考试题目</asp:ListItem>
                                            <asp:ListItem Value="que_type">考题类型</asp:ListItem>
                                            <asp:ListItem Value="Expr3">所属课程</asp:ListItem>
                                            <asp:ListItem Value="Name">所属套题</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 1080px; height: 21px">
                                        <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="关键字"></asp:Label></td>
                                    <td style="width: 260px; height: 21px">
                                        <asp:TextBox ID="txtSelect" runat="server" Font-Size="9pt" Width="100px"></asp:TextBox></td>
                                    <td style="width: 279px; height: 21px">
                                        <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                            Text="查询" /></td>
                                </tr>
                            </table>
                            <asp:GridView ID="gvExamTitle" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Size="9pt" OnPageIndexChanging="GridView1_PageIndexChanging"
                                OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                                PageSize="5" Width="594px" SkinID="gvSkin">
                                <Columns>
                                    <asp:BoundField DataField="que_subject" HeaderText="考试题目" />
                                    <asp:BoundField DataField="que_type" HeaderText="考试类型" />
                                    <asp:BoundField DataField="Name" HeaderText="所属套题" />
                                    <asp:BoundField DataField="que_joindate" HeaderText="加入时间" />
                                    <asp:BoundField DataField="Expr3" HeaderText="所属课程" />
                                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="KaoshiUpdate.aspx?ID={0}"
                                        HeaderText="修改" Text="修改" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp;
                </td>
                <td align="center" style="vertical-align: top; width: 256px; height: 11px; text-align: center">
                </td>
            </tr>
            <tr>
                <td style="width: 76px; height: 70px">
                </td>
                <td style="width: 256px; height: 70px">
                    &nbsp;</td>
                <td style="width: 256px; height: 70px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

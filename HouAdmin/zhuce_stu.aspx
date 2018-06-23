<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce_stu.aspx.cs" Inherits="HouAdmin_ZhuanyeUpdate"  Theme="mytheme"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 980px; height: 621px">
            <tr>
                <td colspan="3" style="height: 54px">
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td rowspan="2" style="width: 102px; text-align: left">
                    <br />
                    &nbsp;</td>
                <td rowspan="2" style="vertical-align: top; width: 128px; text-align: left">
                    &nbsp;
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Faq" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px"
                            VerticalPadding="0px" />
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
                <td style="vertical-align: top; width: 547px; height: 14px; text-align: center">
                    <table>
                        <tr>
                            <td style="width: 100px; height: 21px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="查询条件"></asp:Label></td>
                            <td style="width: 120px; height: 21px">
                                <asp:DropDownList ID="ddlStuID" runat="server" Font-Size="9pt" Width="140px">
                                    <asp:ListItem Value="ID">学生证号</asp:ListItem>
                                    <asp:ListItem Value="Expr1">所属专业</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 100px; height: 21px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="关键字"></asp:Label></td>
                            <td style="width: 100px; height: 21px">
                                <asp:TextBox ID="txtSelect" runat="server" Font-Size="9pt" Width="100px"></asp:TextBox></td>
                            <td style="width: 100px; height: 21px">
                                <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="查询" /></td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="gvStuInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Size="9pt" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                        PageSize="5" Width="584px" SkinID="gvSkin">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="学生证号" />
                            <asp:BoundField DataField="Name" HeaderText="姓名" />
                            <asp:BoundField DataField="Sex" HeaderText="性别" />
                            <asp:BoundField DataField="Expr1" HeaderText="所属专业" />
                            <asp:BoundField DataField="JoinTime" HeaderText="注册时间" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 547px; height: 152px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

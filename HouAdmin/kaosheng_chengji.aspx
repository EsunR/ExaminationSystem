<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kaosheng_chengji.aspx.cs" Inherits="HouAdmin_kaosheng_chengji" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        #UpdatePanel1{
            position: relative;
            left: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 998px; height: 621px;">
            <tr>
                <td align="center" colspan="4" style="height: 103px">
                    &nbsp;<br />
                </td>
                <td align="center" colspan="1" style="height: 103px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td align="right" rowspan="2" style="width: 124px; text-align: left">
                    &nbsp;
                </td>
                <td rowspan="2" style="vertical-align: top; width: 88px; text-align: left">
                    &nbsp;<asp:TreeView ID="TreeView1" runat="server" Height="198px" ImageSet="Faq" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"
                        Width="32px">
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
                <td style="vertical-align: top; width: 17px; height: 379px; text-align: center">
                </td>
                <td style="vertical-align: top; width: 88px; height: 379px; text-align: center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table style="vertical-align: top; text-align: center" width="550">
                                <tr>
                                    <td style="width: 120px">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="查询条件" Width="54px"></asp:Label></td>
                                    <td style="width: 120px">
                                        <asp:DropDownList ID="ddlStuID" runat="server" Font-Size="9pt" Width="107px">
                                            <asp:ListItem Value="stu_id">学生证号</asp:ListItem>
                                            <asp:ListItem Value="which_lesson">考试课程</asp:ListItem>
                                            <asp:ListItem Value="taotiname">套题名称</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 924px">
                                        <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="关键字"></asp:Label></td>
                                    <td style="width: 260px">
                                        <asp:TextBox ID="txtSelect" runat="server" Font-Size="9pt" Width="100px"></asp:TextBox></td>
                                    <td style="width: 279px">
                                        <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                            Text="查询" /></td>
                                </tr>
                            </table>
                            <asp:GridView ID="gvStuExam" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                CellPadding="4" Font-Size="9pt" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                                OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                                PageSize="5" Width="588px" ForeColor="#333333">
                                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                <Columns>
                                    <asp:BoundField DataField="stu_id" HeaderText="学生证号">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="which_lesson" HeaderText="考试课程" />
                                    <asp:BoundField DataField="taotiname" HeaderText="套题名称" />
                                    <asp:BoundField DataField="res_single" HeaderText="单选成绩" />
                                    <asp:BoundField DataField="res_more" HeaderText="多选成绩" />
                                    <asp:BoundField DataField="res_total" HeaderText="总成绩" />
                                    <asp:BoundField DataField="res_subdate" HeaderText="考试时间" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
                <td style="vertical-align: top; width: 96px; height: 379px; text-align: center">
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 17px; height: 79px">
                </td>
                <td align="right" style="width: 88px; height: 79px;">
                    &nbsp;</td>
                <td align="right" style="width: 96px; height: 79px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

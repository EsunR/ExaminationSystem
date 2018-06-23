<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoshiUpdate.aspx.cs" Inherits="HouAdmin_KaoshiUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/在线考试后台1.jpg); width: 942px; height: 623px">
            <tr>
                <td align="center" colspan="3" style="height: 93px">
                    &nbsp;<br />
                </td>
                <td align="center" colspan="1" style="height: 93px">
                </td>
            </tr>
            <tr>
                <td style="width: 322px; height: 119px; text-align: left">
                    &nbsp;</td>
                <td align="right" style="vertical-align: top; width: 123px; height: 119px; text-align: left">
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
                <td align="center" style="width: 729px; height: 119px">
                    <table>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="课程名称："></asp:Label></td>
                            <td align="left" style="width: 109px">
                                <asp:TextBox ID="txtLessName" runat="server" Font-Size="9pt" Width="140px"></asp:TextBox></td>
                            <td style="width: 24px">
                                <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Font-Size="9pt" Text="题目类型："></asp:Label></td>
                            <td style="width: 109px">
                                <asp:DropDownList ID="ddlProfession" runat="server" AutoPostBack="True" Font-Size="9pt"
                                    Width="140px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>单选题</asp:ListItem>
                                    <asp:ListItem>多选题</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="选  项A："></asp:Label></td>
                            <td style="width: 109px">
                                <asp:TextBox ID="txtSelA" runat="server" Font-Size="9pt" Width="140px"></asp:TextBox></td>
                            <td style="width: 24px">
                                <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label5" runat="server" Font-Size="9pt" Text="选 项B："></asp:Label></td>
                            <td style="width: 109px">
                                <asp:TextBox ID="txtSelB" runat="server" Font-Size="9pt" Width="140px"></asp:TextBox></td>
                            <td style="width: 24px">
                                <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label6" runat="server" Font-Size="9pt" Text="选 项C："></asp:Label></td>
                            <td style="width: 109px">
                                <asp:TextBox ID="txtSelC" runat="server" Font-Size="9pt" Width="140px"></asp:TextBox></td>
                            <td style="width: 24px">
                                <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 26px">
                                <asp:Label ID="Label7" runat="server" Font-Size="9pt" Text="选 项D："></asp:Label></td>
                            <td style="width: 109px; height: 26px">
                                <asp:TextBox ID="txtSelD" runat="server" Font-Size="9pt" Width="140px"></asp:TextBox></td>
                            <td style="width: 24px; height: 26px">
                                <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                            <td style="width: 24px; height: 26px">
                            </td>
                            <td style="width: 24px; height: 26px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 22px">
                                <asp:Label ID="Label8" runat="server" Font-Size="9pt" Text="正确答案："></asp:Label></td>
                            <td align="left" colspan="1" rowspan="1" style="height: 1px">
                                <asp:Panel ID="Panel1" runat="server" Height="20px" Width="125px">
                                    <asp:DropDownList ID="ddlAnswer" runat="server" Font-Size="9pt" Visible="False" Width="64px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                    </asp:DropDownList></asp:Panel>
                                <asp:Panel ID="Panel2" runat="server" Height="10px" Width="125px">
                                    <asp:CheckBoxList ID="cblAnswer" runat="server" Font-Size="9pt" RepeatDirection="Horizontal"
                                        Visible="False">
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                    </asp:CheckBoxList></asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 26px">
                                <asp:Label ID="Label9" runat="server" Font-Size="9pt" Text="注 释："></asp:Label></td>
                            <td style="width: 109px; height: 26px">
                                <asp:TextBox ID="txtInstruction" runat="server" Font-Size="9pt" Width="140px"></asp:TextBox></td>
                            <td style="width: 24px; height: 26px">
                            </td>
                            <td style="width: 24px; height: 26px">
                            </td>
                            <td style="width: 24px; height: 26px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 109px">
                                <asp:Button ID="btnModify" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                                    Text="修改" />
                                <asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="Button2_Click" Text="返回" /></td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                            <td style="width: 24px">
                            </td>
                        </tr>
                    </table>
                    &nbsp;</td>
                <td align="center" style="width: 729px; height: 119px">
                </td>
            </tr>
            <tr>
                <td style="width: 322px; height: 119px; text-align: left">
                </td>
                <td align="right" style="vertical-align: top; width: 123px; height: 119px; text-align: left">
                </td>
                <td align="center" style="width: 729px; height: 119px">
                </td>
                <td align="center" style="width: 729px; height: 119px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

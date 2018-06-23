<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XuanZe_TaoTi.aspx.cs" Inherits="QianUser_XuanZe_TaoTi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/学生注册.jpg); width: 800px; height: 608px">
            <tr>
                <td align="center" colspan="1" style="width: 735px; height: 53px">
                </td>
                <td align="center" colspan="2" style="width: 96446px; height: 53px">
                    &nbsp;</td>
                <td align="center" colspan="1" style="width: 309px; height: 53px">
                </td>
                <td align="center" colspan="1" style="width: 674px; height: 53px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 735px; height: 12px">
                </td>
                <td align="center" colspan="4" style="height: 12px">
                    <table id="TABLE1" onclick="return TABLE1_onclick()">
                        <tr>
                            <td align="center" style="width: 221px">
                            </td>
                            <td align="center" style="width: 105px">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/igm/考试规则_03.jpg" OnClick="ImageButton1_Click" Height="86px" Width="83px" />
                                &nbsp; &nbsp;
                            </td>
                            <td align="center" style="width: 98px">
                                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/igm/考试规则_05.jpg"
                                    OnClick="ImageButton2_Click" Height="86px" /></td>
                            <td align="center" style="width: 84px">
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/igm/考试规则_07.jpg"
                                    OnClick="ImageButton3_Click" Height="88px" />&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 735px; height: 56px">
                </td>
                <td align="center" colspan="3" style="vertical-align: middle; height: 56px">
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Blue" Text="选择考试套题"></asp:Label><br />
                    <br />
                    <br />
                    <br />
                </td>
                <td align="center" colspan="1" style="width: 674px; height: 56px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="1" rowspan="2" style="width: 735px; height: 265px;">
                </td>
                <td colspan="3" rowspan="2" style="vertical-align: top; height: 265px;">
                    <table>
                        <tr>
                            <td align="right" style="width: 100px; height: 24px">
                                <asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="选择课程："></asp:Label></td>
                            <td align="left" colspan="2" style="height: 24px">
                                <asp:DropDownList ID="ddlSelLess" runat="server" AutoPostBack="True" Font-Size="9pt"
                                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="108px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px; height: 23px">
                                <asp:Label ID="Label5" runat="server" Font-Size="9pt" Text="选择套题："></asp:Label></td>
                            <td align="left" colspan="2" style="height: 23px">
                                <asp:DropDownList ID="ddlSelQue" runat="server" Font-Size="9pt" Width="150px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                                <asp:Button ID="btnSubmit" runat="server" Font-Size="9pt" OnClick="BtnSubmit_Click"
                                    Text="同意" />
                                &nbsp;&nbsp; &nbsp;<asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="BtnBack_Click"
                                    Text="返回" /></td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    &nbsp; &nbsp;&nbsp;
                </td>
                <td colspan="1" rowspan="2" style="width: 674px; height: 265px;">
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ZhunBeiKaoShi.aspx.cs" Inherits="QianUser_ZhunBeiKaoShi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/准备考试.jpg); width: 800px; height: 609px">
            <tr>
                <td align="center" colspan="1" style="width: 814px; height: 1px">
                </td>
                <td align="center" colspan="2" style="width: 96446px; height: 1px">
                    &nbsp;</td>
                <td align="center" colspan="1" style="width: 1387px; height: 1px">
                </td>
                <td align="center" colspan="1" style="width: 674px; height: 1px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 814px; height: 10px">
                </td>
                <td align="center" colspan="4" style="height: 10px">
                    <table id="TABLE1" onclick="return TABLE1_onclick()">
                        <tr>
                            <td align="center" style="width: 234px; height: 49px;">
                            </td>
                            <td align="center" style="width: 105px; height: 49px;">
                                &nbsp; &nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/igm/考试规则_03.jpg" OnClick="ImageButton1_Click" Height="80px" /></td>
                            <td align="center" style="width: 98px; height: 49px;">
                                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/igm/考试规则_05.jpg"
                                    OnClick="ImageButton2_Click" Height="80px" /></td>
                            <td align="center" style="width: 84px; height: 49px;">
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/igm/考试规则_07.jpg"
                                    OnClick="ImageButton3_Click" Height="80px" />&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 814px; height: 39px;">
                </td>
                <td align="center" colspan="3" style="vertical-align: bottom; height: 39px;">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Blue" Text="准备考试"></asp:Label></td>
                <td align="center" colspan="1" style="width: 674px; height: 39px;">
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="1" rowspan="2" style="width: 814px">
                </td>
                <td colspan="3" rowspan="2">
                    &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnBegin" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                        Text="开始" />
                    <asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="Button2_Click" Text="返回" /><br />
                    <br />
                    <br />
                    &nbsp; &nbsp;&nbsp;
                </td>
                <td colspan="1" rowspan="2" style="width: 674px">
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

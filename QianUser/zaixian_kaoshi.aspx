


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zaixian_kaoshi.aspx.cs" Inherits="QianUser_zaixian_kaoshi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="background-image: url(../igm/考试规则.jpg); width: 800px; height: 607px">
            <tr>
                <td align="center" colspan="1" style="width: 832px; height: 39px">
                </td>
                <td align="center" colspan="2" style="width: 96446px; height: 39px">
                    &nbsp;</td>
                <td align="center" colspan="1" style="width: 309px; height: 39px">
                </td>
                <td align="center" colspan="1" style="width: 674px; height: 39px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 832px; height: 18px">
                </td>
                <td align="center" colspan="4" style="height: 18px">
                    <table id="TABLE1" onclick="return TABLE1_onclick()" style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px">
                        <tr>
                            <td align="center" style="width: 276px; height: 47px;">
                            </td>
                            <td align="center" style="height: 47px; margin: 0px;">
                                <br />
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/igm/考试规则_03.jpg" OnClick="ImageButton1_Click" Height="85px" /><br />
                                &nbsp;
                                &nbsp; &nbsp;
                            </td>
                            <td align="center" style="width: 84px; height: 47px; margin: 0px;">
                                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/igm/考试规则_05.jpg"
                                    OnClick="ImageButton2_Click" Height="85px" Width="77px" /></td>
                            <td align="center" style="width: 57px; height: 47px; margin: 0px;">
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/igm/考试规则_07.jpg"
                                    OnClick="ImageButton3_Click" Height="85px" />&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 832px;">
                </td>
                <td align="center" colspan="3" style="vertical-align: bottom;">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Blue" Text="考试规则"></asp:Label></td>
                <td align="center" colspan="1" style="width: 674px;">
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="1" rowspan="2" style="width: 832px; height: 329px;">
                </td>
                <td colspan="3" rowspan="2" style="height: 329px">
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="网络考试系统不许刷新，不许后退，否则后果自负。如果在规定的考试时间内没有交卷，系统会自动提交。 只有同意后才可以进行考试，一个人同一个课程只能考一次，换题之后可以重新考。没有试题的课程是不会让考生选这个课程的，所以如果没有找到你想要考的课程不要着急，请联系管理员。"
                        Width="462px" Height="67px"></asp:Label><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnBegin" runat="server" Font-Size="9pt" OnClick="Button1_Click"
                        Text="开始" /><br />
                    &nbsp; &nbsp; &nbsp;
                </td>
                <td colspan="1" rowspan="2" style="width: 674px; height: 329px;">
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

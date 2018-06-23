using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class QianUser_ZhunBeiKaoShi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("XuanZe_TaoTi.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("StartExamfra.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect("zaixian_kaoshi.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect("Info_StuResult.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect("../Default.aspx");
    }
}

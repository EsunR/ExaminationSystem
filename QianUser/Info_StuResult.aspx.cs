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
using System.Data.SqlClient;

public partial class QianUser_Info_StuResult : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataconn.ecadabind(gvExamResu, "select * from chengji_chaxun_view ORDER BY ID DESC");
        }
    }
    protected void BtnSelect_Click(object sender, EventArgs e)
    {
        if (txtSelect.Text == "")
        {
            dataconn.ecadabind(gvExamResu, "select * from chengji_chaxun_view ORDER BY ID DESC");
        }
        else
        {
            dataconn.ecadabind(gvExamResu, "Select * From chengji_chaxun_view Where "
                + ddlStuID.SelectedValue + "  Like  '%" + txtSelect.Text + "%'");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExamResu.PageIndex = e.NewPageIndex;
        dataconn.ecadabind(gvExamResu, "Select * From chengji_chaxun_view Where "
                + ddlStuID.SelectedValue + "  Like  '%" + txtSelect.Text + "%'");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[6].Text = Convert.ToString(Convert.ToDateTime(e.Row.Cells[6].Text).ToShortDateString());
        }
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

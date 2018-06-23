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

public partial class HouAdmin_KechengInsert : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataconn.ecDropDownList(ddlProfession, "select * from tb_Profession", "Name", "id");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dataconn.eccom("insert into tb_lesson (name,ofProfession)values('"
            + this.txtLessName.Text + "','" + this.ddlProfession.Text + "')");
        Page.Response.Redirect("kecheng_xinxi.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("kecheng_xinxi.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

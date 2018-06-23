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

public partial class HouAdmin_ZhuanyeUpdate : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection con = dataconn.getcon();
            con.Open();
            SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Profession where id="
                + Request["id"], con);
            DataSet mydataset = new DataSet();
            mydataadapter.Fill(mydataset, "tb_Profession");
            DataRowView rowview = mydataset.Tables["tb_Profession"].DefaultView[0];
            this.txtProName.Text = Convert.ToString(rowview["Name"]);
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dataconn.eccom("update tb_Profession set Name='" + this.txtProName.Text + "' where ID=" + Request["ID"]);
        Page.Response.Redirect("zhuanye_xinxi.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("zhuanye_xinxi.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

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

public partial class HouAdmin_KechengUpdate : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataconn.ecDropDownList(ddlProfession, "select * from tb_Profession", "Name", "id");
            SqlConnection con = dataconn.getcon();
            con.Open();
            SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Lesson where ID="
                + Request["id"], con);
            DataSet mydataset = new DataSet();
            mydataadapter.Fill(mydataset, "tb_lesson");
            DataRowView rowview = mydataset.Tables["tb_lesson"].DefaultView[0];
            this.txtLessName.Text = Convert.ToString(rowview["Name"]);
            ddlProfession.Text = Convert.ToString(rowview["ofProfession"]);
            con.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string getid = Request.QueryString["ID"].ToString();
            dataconn.eccom("update tb_Lesson set Name='" + this.txtLessName.Text + "',ofProfession='"
                + Convert.ToInt32(ddlProfession.SelectedValue) + "' where  ID='" + getid + "'");
            Response.Write("<script lanuage=javascript>alert('修改成功！');location='kecheng_xinxi.aspx'</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
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

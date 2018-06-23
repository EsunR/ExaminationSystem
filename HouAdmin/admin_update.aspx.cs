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

public partial class HouAdmin_admin_update : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        //在文本框中显示管理员信息
        if (!IsPostBack)
        {
            SqlConnection con = dataconn.getcon();
            con.Open();
            SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Administrator where ID=" + Request["id"], con);
            DataSet mydataset = new DataSet();
            mydataadapter.Fill(mydataset, "tb_Administrator");
            DataRowView rowview = mydataset.Tables["tb_Administrator"].DefaultView[0];
            this.txtAdminName.Text = Convert.ToString(rowview["Name"]);
            this.txtAdminPwd.Text = Convert.ToString(rowview["PWD"]);
        }
    }
    //======================修改管理员信息==========================
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlstr = "update tb_Administrator set Name='"+this.txtAdminName.Text+"',PWD='"+this.txtAdminPwd.Text+"'where ID=" + Request["ID"];
        dataconn.eccom(sqlstr);
        //Page.Response.Redirect("admin.aspx");
        Response.Write("<script lanuage=javascript>alert('修改成功！');location='admin.aspx'</script>");
    }
    //====================返回管理员信息列表页面====================
    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("admin.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

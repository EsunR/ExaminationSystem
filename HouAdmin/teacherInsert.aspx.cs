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

public partial class HouAdmin_AdminInsert : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.txtAdminName.Text != "")
        {
            SqlConnection con = dataconn.getcon();
            con.Open();
            string sqlstr1 = "select count(*) from tb_Teacher where Name='" + txtAdminName.Text.ToString() + "'";
            SqlCommand mycom = new SqlCommand(sqlstr1, con);
            int intcount = Convert.ToInt32(mycom.ExecuteScalar());
            if (intcount > 0)
            {
                Response.Write("<script>alert('对不起！此教师已经添加！');location='teacherInsert.aspx'</script>");
            }
            else
            {
                dataconn.eccom("exec add_teacher '" + txtAdminName.Text + "','" + txtAdminPwd.Text + "'");
                Response.Write("<script lanuage=javascript>alert('添加成功！');location='Teacher.aspx'</script>");
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("Teacher.aspx");
    }
    protected void TreeView2_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView2.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

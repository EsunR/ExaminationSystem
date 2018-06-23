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

public partial class HouAdmin_InfoPwd : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = dataconn.getcon();
        con.Open();
        SqlCommand com = new SqlCommand("select count(*) from tb_Student where ID='" + txtStuID.Text + "'", con);
        int count = Convert.ToInt32(com.ExecuteScalar());
        if (count > 0)
        {
            Session["ID"] = txtStuID.Text;
            Page.Response.Redirect("InfoPwdd.aspx");
        }
        else
        {
            Response.Write("<script>alert('无此学生编号、或输入有误');location='javascript:history.go(-1)'</script>");
            return;
        }
        con.Close();
    }
}

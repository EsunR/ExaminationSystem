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

public partial class InfoPwdd : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = dataconn.getcon();
        con.Open();
        SqlCommand mycom = new SqlCommand("select question from tb_Student  where ID='"
            + Convert.ToString(Session["ID"]) + "'", con);
        this.labQuePwd.Text = Convert.ToString(mycom.ExecuteScalar());
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = dataconn.getcon();
        con.Open();
        SqlCommand mycom = new SqlCommand("select count(*) from tb_Student where answer='"
            + txtAnsPwd.Text + "' and id=" + Convert.ToString(Session["ID"]), con);
        int count = Convert.ToInt32(mycom.ExecuteScalar());
        if (count > 0)
        {
            Page.Response.Redirect("InfoPwddd.aspx");
        }
        else
        {
            Response.Write("<script>alert('提示问题答案输入有误！');location='javascript:history.go(-1)'</script>");
            return;
        }
        con.Close();
    }
}

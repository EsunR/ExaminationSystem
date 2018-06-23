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

public partial class InfoPwddd : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = dataconn.getcon();
        con.Open();
        SqlCommand mycom1 = new SqlCommand("select ID,Pwd from tb_Student where ID='" + Convert.ToString(Session["ID"]) + "'", con);
        SqlCommand mycom2 = new SqlCommand("select PWD from tb_Student where ID='" + Convert.ToString(Session["ID"]) + "'", con);
        this.txtStuID.Text = Convert.ToString(mycom1.ExecuteScalar());
        this.txtStuPwd.Text = Convert.ToString(mycom2.ExecuteScalar());
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("Default.aspx");
    }
}

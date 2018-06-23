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

public partial class zhuce : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //调用公共类中的ecDropDownList方法
            dataconn.ecDropDownList(ddlProfession, "select * from tb_Profession", "Name", "ID");
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
        }
    }

    //重置文本框按钮
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtStuID.Text = "";
        txtStuName.Text = "";
        txtStuPwd.Text = "";
        txtStuFPwd.Text = "";
        txtQuePwd.Text = "";
        txtAnsPwd.Text = "";
        txtStuID.Focus();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    //注册按钮
    protected void Button1_Click(object sender, EventArgs e)
    {
        //调用公共类中的eccom，执行SQL语句命令
        dataconn.eccom("insert into tb_Student"
            + "(ID,Name,PWD,question,answer,Sex,profession)"
            + "values('" + this.txtStuID.Text + "','" + this.txtStuName.Text + "','"
            + this.txtStuPwd.Text + "','" + this.txtQuePwd.Text + "','"
            + this.txtAnsPwd.Text + "','" + this.ddlSex.Text + "',"
            + Convert.ToInt32(ddlProfession.SelectedValue) + ")");
             //如果添加成功，弹出成功对话框
             Label1.Visible = true;
    }

    //检测账号是否存在按钮
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlDataReader read = dataconn.ExceRead("select * from tb_Student where ID='" + this.txtStuID.Text + "'");
		read.Read();
		if (read.HasRows)
		{
            if (this.txtStuID.Text == read["ID"].ToString())
			{

                Label2.Visible = true;
			}
		}
		else
		{
            Label3.Visible = true;
		}
		read.Close();
    }
}

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

public partial class HouAdmin_ZhuangyeInsert : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        string sqlstr = "select * from tb_Profession";
        //创建一个新的数据库连接对象
        SqlConnection sqlconn = dataconn.getcon();
        //打开数据库连接
        sqlconn.Open();
        //定义并初使化命令对象
        SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
        //创建一个数据阅读器
        SqlDataReader read = sqlcom.ExecuteReader();
        //如果记录不为空
        read.Read();
        if(read.HasRows)
        {
            if (this.txtProName.Text.Trim() == read["Name"].ToString().Trim())
            {
                Label2.Text = "该专业已经存在，请重新填写专业名称";
                txtProName.Text = "";
                txtProName.Focus();
                btnAdd.Enabled = false;
                Label2.Visible = true;
                btnTest.Enabled = true;
                return;
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "该专业可以进行正常注册";
                btnAdd.Enabled = true;
                btnTest.Enabled = false;
            }
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "该专业可以进行正常注册";
            btnAdd.Enabled = true;
            btnTest.Enabled = false;
        }
        //关闭数据阅读器
        read.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dataconn.eccom("insert into tb_Profession(Name)values('" + txtProName.Text + "')");
        //Response.Write("<script lanuage=javascript>alert('添加成功！');location='zhuanye_xinxi.aspx'</script>");
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

using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Datacon dataconn=new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["StuName"] = this.txtUserName.Text;//记录学生学号
        if (!IsPostBack)
        {
            Random rnd = new Random();
            labValidate.Text = rnd.Next(1000, 9999).ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //判断验证码是否有误
        if (txtValidate.Text != txtValidate.Text)
        {
            Response.Write("<script language=javascript>alert('验证码有误！')location='javascript:history.go(-1)'</script>");
        }
        else
        {
            //
            if(DropDownList1.SelectedValue == "学生")
            {
                getcom(2);
            }
            else if(DropDownList1.SelectedValue == "教师")
            {
                getcom(3);
            }
            else if(DropDownList1.SelectedValue == "管理员")
            {
                getcom(1);
            }
        }
    }
    //自定义方法getcom方法，判断是否是管理员还是考生
    private void getcom(int i)
    {
        //打开数据库连接，并调用公共类中的getcon方法
        SqlConnection con = dataconn.getcon();
        con.Open();
        //创建一个新的SqlCommand实例对象
        SqlCommand com = con.CreateCommand();
        switch (i)
        {
            case 1:
                com.CommandText = "select count(*) from tb_Administrator where Name='" + this.txtUserName.Text + "'and PWD='" + this.txtPwd.Text + "'";
                //获取SQL语句的值 强制转换成数值类型
                int count1 = Convert.ToInt32(com.ExecuteScalar());
                //判断数据库中是否存在数据
                if (count1 > 0)
                {
                    Application["Name"] = txtUserName.Text;//成功，记录管理员ID
                    Application["PWD"] = txtPwd.Text;//成功，记录管理员密码
                    //如果登录成功，则跳转到管理员页面
                    Page.Response.Redirect("HouAdmin/admin.aspx");
                }
                else
                {
                    //如果登录失败，则弹出错误信息
                    Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
                }
                break;
            case 2:
                com.CommandText = "select count(*) from tb_Student where ID='" + txtUserName.Text + "' and PWD='" + txtPwd.Text + "'";
                int count2 = Convert.ToInt32(com.ExecuteScalar());
                if (count2 > 0)
                {
                    Application["ID"] = txtUserName.Text;//记录登录学生ID
                    Application["PWD"] = txtPwd.Text;//记录登录学生密码
                    Page.Response.Redirect("QianUser/zaixian_kaoshi.aspx");
                }
                else
                {
                    Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
                    return;
                }
                break;
            case 3:
                com.CommandText = "select count(*) from tb_Teacher where Name='" + txtUserName.Text + "' and PWD='" + txtPwd.Text + "'";
                int count3 = Convert.ToInt32(com.ExecuteScalar());
                if (count3 > 0)
                {
                    Application["Name"] = txtUserName.Text;//记录教师ID
                    Application["PWD"] = txtPwd.Text;//记录教师密码
                    Page.Response.Redirect("Teacher/taoti_xinxi.aspx");
                }
                else
                {
                    Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
                    return;
                }
                break;
        }
    }
    //找回密码
    protected void Button3_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("InfoPwd.aspx");
    }
    //用户注册

    protected void btnZhunce_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("zhuce.aspx");
    }
}
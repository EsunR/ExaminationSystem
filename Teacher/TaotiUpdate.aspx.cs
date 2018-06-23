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

public partial class HouAdmin_TaotiUpdate : System.Web.UI.Page
{
    //创建公共类的一个新的实例对象
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断页面是否首次加载
        {
            //调用公共类中的ecDropDownList方法，将考生所学专业绑定到下拉列表框中
            dataconn.ecDropDownList(ddlLesson, "select * from tb_Lesson", "Name", "id");
            //调用公共类中的getcon方法，创建一个新的数据库连接
            SqlConnection con = dataconn.getcon();
            //定义并初始化一个数据适配器
            SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_TaoTi where id="
                + Request["id"], con);
            //创建一个DataSet数据集
            DataSet mydataset = new DataSet();
            //将数据适配器中的数据填充到数据集mydataset中
            mydataadapter.Fill(mydataset, "tb_TaoTi");
            //在mydataset数据集中创建tb_TaoTi的默认视图            
            DataRowView rowview = mydataset.Tables["tb_TaoTi"].DefaultView[0];
            //将输入的套题名称转换成字符串
            this.txtQueName.Text = Convert.ToString(rowview["Name"]);
            ddlLesson.Text = Convert.ToString(rowview["LessonID"]);
            //关闭数据库连接
            con.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string getid = Request.QueryString["ID"].ToString();
            dataconn.eccom("update tb_TaoTi set name='" + this.txtQueName.Text + "',LessonID="
                + Convert.ToInt32(ddlLesson.SelectedValue) + " where  ID=" + getid + "");
            Response.Write("<script lanuage=javascript>alert('修改成功！');location='taoti_xinxi.aspx'</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("taoti_xinxi.aspx");
    }


    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

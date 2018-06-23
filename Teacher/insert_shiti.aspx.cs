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

public partial class HouAdmin_insert_shiti : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断页面是否首次加载
        {
            //调用ecDropDownList方法，绑定下拉列表数据
            dataconn.ecDropDownList(ddlProfession, "select * from tb_Profession", "Name", "id");
            GetDropDownList();
　　　　　　
        }
        this.Label5.Visible = false;
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        Session["drop1"] = ddlProfession.Text;
        Session["drop2"] = ddlLesson.Text;
        Session["drop3"] = ddlQueName.Text;
        if (this.ddlLesson.Text == "")
        {;
            //this.Label3.Text = "请选择考试课程";
            this.Label3.Visible = true;
            return;
        }
        if(this.ddlQueName.Text=="")
        {
            //this.Label5.Text = "请先添加考试试题！";
            this.Label5.Visible = true;
            return;
        }

        Page.Response.Redirect("InsertShiTi.aspx"); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("insert_shiti.aspx");
    }
    protected void ddlProfession_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetDropDownList();
    }
    public void GetDropDownList()
    {
        //调用ecDropDownList方法，绑定考试专业信息
        dataconn.ecDropDownList(ddlLesson, "select * from tb_Lesson where ofProfession='"
            + ddlProfession.SelectedValue.ToString() + "'", "Name", "id");
        dataconn.ecDropDownList(ddlQueName, "select a.*,b.ofProfession from tb_TaoTi as a join tb_Lesson as b on a.LessonID=b.ID where a.LessonID='"
            + ddlLesson.SelectedValue.ToString() + "' and b.ofProfession='"
            + ddlProfession.SelectedValue.ToString() + "'", "Name", "id");
    }

    protected void ddlLesson_SelectedIndexChanged(object sender, EventArgs e)
    {
        //调用公共类中的ecDropDownList方法，绑定考试课程
        dataconn.ecDropDownList(ddlQueName, "select * from tb_TaoTi where LessonID='" + ddlLesson.SelectedValue.ToString() + "'", "Name", "id");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

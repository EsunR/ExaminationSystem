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

public partial class HouAdmin_zhuanye_xinxi : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断页面是否首次加载
        {
            //调用公共类中的ecadabindinfostring方法将数据绑定到表格控件
            dataconn.ecadabindinfostring(gvProInfo, "select * from tb_Profession ORDER BY ID DESC", "ID");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtSelect.Text == "")
        {
            //调用公共类中的ecadabindinfostring方法，绑定数据库信息
            dataconn.ecadabindinfostring(gvProInfo, "select * from tb_Profession ORDER BY ID DESC", "ID");
        }
        else
        {
            //调用公共类中的ecadabind方法，绑定查询信息
            dataconn.ecadabind(gvProInfo, "Select * from tb_Profession Where "
                + ddlProName.SelectedValue + " Like '%" + txtSelect.Text + "%'");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //获得当前页面索引值
        gvProInfo.PageIndex = e.NewPageIndex;
        //定义SQL语句，选择查询条件
        //string sqlstr2 = "select * from tb_Profession where" + ddlProName.SelectedValue + "like '%" + this.txtSelect.Text + "%'";
        string sqlstr2 = " Select * from tb_Profession Where " + ddlProName.SelectedValue + " Like '%" + txtSelect.Text + "%'";
        //调用公共类中的ecadabind方法，实现数据的绑定
        dataconn.ecadabindinfostring(gvProInfo, sqlstr2, "ID");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //定义SQL删除语句
        string sqlstr3 = "delete from tb_Profession where ID='" + gvProInfo.DataKeys[e.RowIndex].Value.ToString() + "'";
        //调用公共类ecom方法，执行SQL语句
        dataconn.eccom(sqlstr3);
        //页面跳转
        Page.Response.Redirect("zhuanye_xinxi.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[1].Text = Convert.ToString(Convert.ToDateTime(e.Row.Cells[1].Text).ToShortDateString());
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((LinkButton)(e.Row.Cells[3].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
        }
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("ZhuangyeInsert.aspx");
    }
}

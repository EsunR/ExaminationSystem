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

public partial class HouAdmin_taoti_xinxi : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断页面是否自次加载
        {
            //调用ecadabindinfostring方法绑定数据库信息
            dataconn.ecadabindinfostring(gvQueInfo, "Select * From kecheng_taoti_view ORDER BY Id DESC", "ID");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtSelect.Text == "")
        {
            //调用ecadabindinfostring方法绑定数据库信息
            dataconn.ecadabindinfostring(gvQueInfo, "Select * From kecheng_taoti_view ORDER BY Id DESC", "ID");
        }
        else
        {
            //调用ecadabind方法绑定查询信息
            dataconn.ecadabind(gvQueInfo, "Select * From kecheng_taoti_view Where "
                + ddlQueName.SelectedValue + " Like '%" + txtSelect.Text + "%'");
        }
    }



    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //获得GridView控件的当前信息
        gvQueInfo.PageIndex = e.NewPageIndex;
        //调用公共类ecadabind方法，绑定数据库信息
        dataconn.ecadabind(gvQueInfo, "Select * From kecheng_taoti_view Where "
                + ddlQueName.SelectedValue + " Like '%" + txtSelect.Text + "%'");
    }



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //调用公共类中的eccom方法，执行SQL语句
        dataconn.eccom("delete from tb_TaoTi where ID='" + gvQueInfo.DataKeys[e.RowIndex].Value + "'");
        //跳转后台套题管理页
        Page.Response.Redirect("taoti_xinxi.aspx");
    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[2].Text = Convert.ToString(Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString());
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((LinkButton)(e.Row.Cells[4].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
        }
    }



    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='../Default.aspx'</script>");
        }
    }



    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        //跳转套题添加页
        Page.Response.Redirect("TaotiInsert. aspx");

    }



}

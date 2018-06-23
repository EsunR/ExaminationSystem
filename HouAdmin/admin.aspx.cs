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

public partial class HouAdmin_admin000 : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        //调用公共类中的ecadabindinfostring方法，实现管理员数据的绑定
        dataconn.ecadabindinfostring(gvAdminInfo, "select * from tb_Administrator ORDER BY ID DESC", "ID");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtSelect.Text == "")
        {
            //调用公共类中的ecadabindinfostring方法，实现管理员数据的绑定
            dataconn.ecadabindinfostring(gvAdminInfo, "select * from tb_Administrator ORDER BY ID DESC", "ID");
        }
        else
        {
            //调用公共类中的ecadabind方法，实现管理员数据的查询
            dataconn.ecadabind(gvAdminInfo, "Select * From tb_Administrator Where "
                + ddlAdminName.SelectedValue + "  Like  '%" + txtSelect.Text + "%'");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAdminInfo.PageIndex = e.NewPageIndex;
        //调用公共类中的ecadabind方法，
        dataconn.ecadabind(gvAdminInfo, "Select * From tb_Administrator Where "
                + ddlAdminName.SelectedValue + "  Like  '%" + txtSelect.Text + "%'");
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //调用公共类中的eccom方法，删除管理员信息
        dataconn.eccom("delete from tb_Administrator where ID='" + gvAdminInfo.DataKeys[e.RowIndex].Value + "'");
        Page.Response.Redirect("admin.aspx"); 
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
        Page.Response.Redirect("AdminInsert.aspx");
    }
}

﻿using System;
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

public partial class HouAdmin_ZhuanyeUpdate : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataconn.ecadabindinfostring(gvStuInfo, "select * from stu_zhuanye_view ORDER BY ID DESC", "ID");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvStuInfo.PageIndex = e.NewPageIndex;
        dataconn.ecadabind(gvStuInfo, "Select * From stu_zhuanye_view Where "
                + ddlStuID.SelectedValue + " Like '%" + txtSelect.Text + "%'");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtSelect.Text == "")
        {
            dataconn.ecadabindinfostring(gvStuInfo, "select * from stu_zhuanye_view ORDER BY ID DESC", "ID");
        }
        else
        {
            dataconn.ecadabind(gvStuInfo, "Select * From stu_zhuanye_view Where "
                + ddlStuID.SelectedValue + " Like '%" + txtSelect.Text + "%'");
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dataconn.eccom("delete from tb_Student where ID='" + gvStuInfo.DataKeys[e.RowIndex].Value + "'");
        Page.Response.Redirect("zhuce_stu.aspx");
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[4].Text = Convert.ToString(Convert.ToDateTime(e.Row.Cells[4].Text).ToShortDateString());
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((LinkButton)(e.Row.Cells[5].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
        }
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}

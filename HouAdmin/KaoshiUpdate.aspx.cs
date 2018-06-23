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

public partial class HouAdmin_KaoshiUpdate : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = dataconn.getcon();
        con.Open();
        SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Questions where id="
            + Request["id"], con);
        DataSet mydataset = new DataSet();
        mydataadapter.Fill(mydataset, "tb_Questions");
        DataRowView rowview = mydataset.Tables["tb_Questions"].DefaultView[0];
        if (!IsPostBack)
        {
            ddlProfession.SelectedItem.Text = Convert.ToString(rowview["que_type"]);
            this.txtLessName.Text = Convert.ToString(rowview["que_subject"]);
            this.txtSelA.Text = Convert.ToString(rowview["optionA"]);
            this.txtSelB.Text = Convert.ToString(rowview["optionB"]);
            this.txtSelC.Text = Convert.ToString(rowview["optionC"]);
            this.txtSelD.Text = Convert.ToString(rowview["optionD"]);
            this.txtInstruction.Text = Convert.ToString(rowview["note"]);
            ddlAnswer.SelectedItem.Text = Convert.ToString(rowview["que_answer"]);
            string strMore = Convert.ToString(rowview["que_answer"]);
            string[] strSel = strMore.Split(',');
            for (int q = 0; q < strSel.Length; q++)
            {
                string strAnswer;
                strAnswer = strSel[q];
                if (strAnswer.Trim() == "A")
                    cblAnswer.Items[0].Selected = true;
                if (strAnswer.Trim() == "B")
                    cblAnswer.Items[1].Selected = true;
                if (strAnswer.Trim() == "C")
                    cblAnswer.Items[2].Selected = true;
                if (strAnswer.Trim() == "D")
                    cblAnswer.Items[3].Selected = true;
            }
        }
        if (ddlProfession.SelectedValue.Trim() == "单选题")
        {
            ddlAnswer.Visible = true;
            cblAnswer.Visible = false;
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        if (ddlProfession.SelectedValue.Trim() == "多选题")
        {
            ddlAnswer.Visible = false;
            cblAnswer.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("admin.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("zhuce_stu.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("zhuanye_xinxi.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("kecheng_xinxi.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("taoti_xinxi.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("kaosheng_chengji.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("kaoshi_timu.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("insert_shiti.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("../index.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("kaoshi_timu.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddlAnswer.Visible == true && cblAnswer.Visible == false && ddlProfession.SelectedIndex == 0)
        {
            dataconn.eccom("update tb_Questions set que_subject='"
                + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                + ddlAnswer.Text + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
            Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            //Response.Redirect("kaoshi_timu.aspx");
        }
        else
        {
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {

                string str1 = "A,B,C,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str1 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
                //Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str2 = "A,B,C";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str2 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
                //Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == false)
            {
                string str3 = "A,B";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str3 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == false)
            {
                string str4 = "A";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str4 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == false)
            {
                string str5 = "B";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str5 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str6 = "B,C";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str6 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str7 = "B,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str7 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str8 = "B,C,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str8 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str9 = "A,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str9 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str10 = "C,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str10 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str11 = "A,C";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str11 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str12 = "B,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str12 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str13 = "A,B,D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str13 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str14 = "A,C";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str14 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str15 = "C";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str15 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str16 = "D";
                dataconn.eccom("update tb_Questions set que_subject='"
                    + this.txtLessName.Text + "',que_type='" + ddlProfession.Text + "',optionA='"
                    + this.txtSelA.Text + "',optionB='" + this.txtSelB.Text + "',optionC='"
                    + this.txtSelC.Text + "',optionD='" + this.txtSelD.Text + "',que_answer='"
                    + str16 + "',note='" + txtInstruction.Text + "' where id=" + Request["id"]);
                Response.Write("<script lanuage=javascript>alert('修改成功！');location='kaoshi_timu.aspx'</script>");
            }
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

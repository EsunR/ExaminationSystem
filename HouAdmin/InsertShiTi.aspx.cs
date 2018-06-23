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

public partial class HouAdmin_InsertShiTi : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ddlType.SelectedIndex == 0)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string sstr1 = Session["drop1"].ToString();
        string sstr2 = Session["drop2"].ToString();
        string sstr3 = Session["drop3"].ToString();
        if (ddlType.SelectedIndex == 0)
        {
            dataconn.eccom("insert into tb_Questions"
                + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','"
                + ddlAnswer.Text + "','" + txtInstruction.Text + "')");
           //Response.Write("<script lanuage=javascript>alert('添加成功！');location='kaoshi_timu.aspx'</script>");
            Response.Redirect("kaoshi_timu.aspx");
        }
        else
        {
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str1 = "A,B,C,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str1
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str2 = "A,B,C";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str2
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == false)
            {
                string str3 = "A,B";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str3
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == false)
            {
                string str4 = "A";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str4
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == false)
            {
                string str5 = "B";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str5
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str6 = "B,C";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str6
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str7 = "B,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str7
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str8 = ",B,C,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str8
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str9 = "A,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str9
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str10 = "C,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str10
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str11 = "A,C";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str11
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str12 = "B,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str12
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == true && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str13 = "A,B,D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str13
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == true && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == true)
            {
                string str14 = "A,C";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str14
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == true && cblAnswer.Items[3].Selected == false)
            {
                string str15 = "C";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str15
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
            if (cblAnswer.Items[0].Selected == false && cblAnswer.Items[1].Selected == false && cblAnswer.Items[2].Selected == false && cblAnswer.Items[3].Selected == true)
            {
                string str16 = "D";
                dataconn.eccom("insert into tb_Questions"
                    + "(que_professionid,que_lessonid,que_taotiid,que_subject,que_type,optionA,optionB,optionC,optionD,que_answer,note)"
                    + "values('" + sstr1 + "','" + sstr2 + "','" + sstr3 + "','" + this.txtExamTitle.Text
                    + "','" + ddlType.Text + "','" + this.txtExamA.Text + "','" + this.txtExamB.Text
                    + "','" + this.txtExamC.Text + "','" + this.txtExamD.Text + "','" + str16
                    + "','" + txtInstruction.Text + "')");
                Response.Redirect("kaoshi_timu.aspx");
            }
        }
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
        Page.Response.Redirect("InsertShiTi.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "退出系统")
        {
            Response.Write("<script lanuage=javascript>window.close();location='javascript:history.go(-1)'</script>");
        }
    }
}
